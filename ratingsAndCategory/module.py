#@author: Augusto Alonso, Pablo Mendez, David Cuellar
#Proyecto 2
#Estructura de datos
#Profesor Douglas Barrios

from authentication.auth import authenticate, getAuth, setAuthUser, getUser
from utils.utils import *
from models.models import Product, User, Brand, ProductCategory
from neomodel import db

mainModuleOptions = ["Filtrar por usuario propio", "Filtrar por usuario externo", "Salir"]
secondCriteria = ["Filtrar por mayor rating", "Filtrar por mayor cantidad de compras", "Regresar"]
secondModules = ["Filtrar por marca", "Filtrar por categoria", "Regresar"]
brandModuleO = ["Mostrar Resultados", "Filtrar por categoria", "Regresar"]
categoryModuleO = ["Mostrar Resultados", "Filtrar por marca", "Regresar"]


def mainModule():
    while True:
        c = selectOptionInList("Escoge el nnumero de una de las opciones", options=mainModuleOptions)
        if c != 2:
            userModule(getAuth() if c == 0 else getUser())
        else:
            break






def userModule(user: User):
    c = selectOptionInList("Escoge el numero de una de las opciones", options=secondCriteria)
    if c == 0:
        secondaryModule(user.productsPurchasedByRating())
    elif c ==1:
        secondaryModule(user.productsPurchasedByQuantity())




def secondaryModule(allProducts:list):
    c = selectOptionInList("Escoge el numero de una de las opciones", options=secondModules)
    if c == 0:
        brands = [brand for brand in Brand.nodes.all()]
        brandChoosen = selectOptionInList("Escoje el numero de marca que deseas buscar",
                                          options=[brand.name for brand in brands])
        brandModule(allProducts, brands[brandChoosen])
    elif c ==1:
        categories = [category for category in ProductCategory.nodes.all()]
        categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar",
                                            options=[c.name for c in categories])
        categoryModule(allProducts, categories[categoryChoose])

def brandModule(allProducts:list, brand: Brand):
    allProducts = list(filter(lambda product: len(product.brand.filter(name=brand.name).all()) > 0, allProducts))
    c = selectOptionInList("Escoge el numero de una de las opciones", options=brandModuleO)
    if c == 0:
        printModels(allProducts)
    elif c == 1:
        categories = [category for category in ProductCategory.nodes.all()]
        categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar", options=[c.name for c in categories])
        allProducts = list(filter(lambda product: len(product.category.filter(name=categories[categoryChoose].name).all()) > 0
                                  , allProducts))
        printModels(allProducts)


def categoryModule(allProducts:list, category: ProductCategory):
    allProducts = list(filter(lambda product: len(product.category.filter(name=category.name).all()) > 0, allProducts))
    while True:
        c = selectOptionInList("Escoge el numero de una de las opciones", options=categoryModuleO)
        if c == 0:
            printModels(allProducts)
            break
        elif c == 1:
            brands = [brand for brand in Brand.nodes.all()]
            brandChoose = selectOptionInList("Escoje el numero de marca que deseas buscar", options=[c.name for c in brands])
            allProducts = list(filter(lambda product: len(product.brand.filter(name=brands[brandChoose].name).all()) > 0
                                      , allProducts))
            printModels(allProducts)
            break
        else:
            break

