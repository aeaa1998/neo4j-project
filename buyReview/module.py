#@author: Augusto Alonso, Pablo Mendez, David Cuellar
#Proyecto 2
#Estructura de datos
#Profesor Douglas Barrios

from authentication.auth import authenticate, getAuth, setAuthUser, getUser
from utils.utils import *
from models.models import Product, User, Brand, ProductCategory
from neomodel import db
from ratingsAndCategory.module import userModule
mainModuleOptions = ["Comprar un producto", "Reseña a producto", "Salir"]
secondModules = ["Filtrar por marca", "Filtrar por categoria", "Regresar"]
brandModuleO = ["Mostrar Resultados", "Filtrar por categoria", "Regresar"]
categoryModuleO = ["Mostrar Resultados", "Filtrar por marca", "Regresar"]

def mainModule():
    while True:
        c = selectOptionInList("Escoge el nnumero de una de las opciones", options=mainModuleOptions)
        if c == 0:
            secondaryModule(Product.nodes.all(), "pu")
        elif c == 1:
            secondaryModule(getAuth().productsPurchasedAndNotRated(), "rev")
        else:
            break

def secondaryModule(allProducts:list, type: str):
    if len(allProducts) > 0:
        c = selectOptionInList("Escoge el numero de una de las opciones", options=secondModules)
        if c == 0:
            brands = [brand for brand in getProductBrands(allProducts)]
            if len(brands) > 0:
                brandChoosen = selectOptionInList("Escoje el numero de marca que deseas buscar",
                                                  options=[brand.name for brand in brands])
                brandModule(allProducts, brands[brandChoosen], type)
            else:
                print("No tiene marcas asociadas")
        elif c ==1:
            categories = [category for category in getProductCategories(allProducts)]
            if len(categories) > 0:
                categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar",
                                                    options=[c.name for c in categories])
                categoryModule(allProducts, categories[categoryChoose], type)
            else:
                print("No tiene categorias asociadas")
    else:
        print("No hay productos con este requisito")


def brandModule(allProducts:list, brand: Brand, type: str):
    if len(allProducts) > 0:
        allProducts = list(filter(lambda product: len(product.brand.filter(name=brand.name).all()) > 0, allProducts))
        c = selectOptionInList("Escoge el numero de una de las opciones", options=brandModuleO)
        if c == 0:
            model = selectModelInList("Escoje el numero de modelo que deseas utilizar: \n", options=allProducts)
            getAuth().resolveAction(model, type)
        elif c == 1:
            categories = [category for category in getProductCategories(allProducts)]
            if len(categories) > 0:
                categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar", options=[c.name for c in categories])
                allProducts = list(filter(lambda product: len(product.category.filter(name=categories[categoryChoose].name).all()) > 0
                                          , allProducts))
                model = selectModelInList("Escoje el numero de modelo que deseas utilizar: \n", options=allProducts)
                getAuth().resolveAction(model, type)
            else:
                print("No tiene categorias asociadas")
    else:
        print("No hay productos con este requisito")

def categoryModule(allProducts:list, category: ProductCategory, type: str):
    if len(allProducts) > 0:
        allProducts = list(filter(lambda product: len(product.category.filter(name=category.name).all()) > 0, allProducts))
        while True:
            c = selectOptionInList("Escoge el numero de una de las opciones", options=categoryModuleO)
            if c == 0:
                model = selectModelInList("Escoje el numero de modelo que deseas utilizar: \n", options=allProducts)
                getAuth().resolveAction(model, type)
                break
            elif c == 1:
                brands = [brand for brand in getProductBrands(allProducts)]
                if len(brands) > 0:
                    brandChoose = selectOptionInList("Escoje el numero de marca que deseas buscar", options=[c.name for c in brands])
                    allProducts = list(filter(lambda product: len(product.brand.filter(name=brands[brandChoose].name).all()) > 0
                                              , allProducts))
                    model = selectModelInList("Escoje el numero de modelo que deseas utilizar: \n", options=allProducts)
                    getAuth().resolveAction(model, type)
                else:
                    print("No tiene marcas asociadas")
                break
            else:
                break
    else:
        print("No hay productos con este requisito")