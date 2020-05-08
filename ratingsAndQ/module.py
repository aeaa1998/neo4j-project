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
        products = user.productsPurchasedByRating()
        printModels(products)
    elif c ==1:
        products = user.productsPurchasedByQuantity()
        printModels(products)

