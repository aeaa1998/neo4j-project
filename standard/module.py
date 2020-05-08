#@author: Augusto Alonso, Pablo Mendez, David Cuellar
#Proyecto 2
#Estructura de datos
#Profesor Douglas Barrios

from authentication.auth import authenticate, getAuth, setAuthUser
from utils.utils import *
from models.models import Product, User, Brand, ProductCategory

mainModuleOptions = ["Filtrar por marca", "Filtrar por categoria", "Salir"]
brandModuleO = ["Mostrar Resultados", "Filtrar por categoria", "Regresar"]
categoryModuleO = ["Mostrar Resultados", "Filtrar por marca", "Regresar"]


def mainModule():
    while True:
        c = selectOptionInList("Escoge el nnumero de una de las opciones", options=mainModuleOptions)
        if c == 0:
            brands = [brand for brand in Brand.nodes.all()]
            brandChoosen = selectOptionInList("Escoje el numero de marca que deseas buscar", options=[brand.name for brand in brands])
            brandModule(brands[brandChoosen])
        elif c == 1:
            categories = [category for category in ProductCategory.nodes.all()]
            categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar",
                                                options=[c.name for c in categories])
            categoryModule(categories[categoryChoose])
        else:
            break


def brandModule(brand: Brand):
    allProducts = brand.products()
    c = selectOptionInList("Escoge el numero de una de las opciones", options=brandModuleO)
    if c == 0:
        printModels(allProducts)
    elif c == 1:
        categories = [category for category in ProductCategory.nodes.all()]
        categoryChoose = selectOptionInList("Escoje el numero de categoria que deseas buscar", options=[c.name for c in categories])
        allProducts = list(filter(lambda product: len(product.category.filter(name=categories[categoryChoose].name).all()) > 0
                                  , allProducts))
        printModels(allProducts)

def categoryModule(category: ProductCategory):
    allProducts = category.products()
    c = selectOptionInList("Escoge el numero de una de las opciones", options=categoryModuleO)
    if c == 0:
        printModels(allProducts)
    elif c == 1:
        brands = [brand for brand in Brand.nodes.all()]
        brandChoose = selectOptionInList("Escoje el numero de marca que deseas buscar", options=[c.name for c in brands])
        allProducts = list(filter(lambda product: len(product.brand.filter(name=brands[brandChoose].name).all()) > 0
                                  , allProducts))
        printModels(allProducts)


