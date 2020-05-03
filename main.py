from neomodel import config
from models.models import Product, User
from standard.module import mainModule as msModule
from ratingsAndCategory.module import mainModule as mixedModule
from ratingsAndQ.module import mainModule as ratingsModule
from utils.utils import *
from authentication.auth import authenticate, getAuth, setAuthUser
config.DATABASE_URL = "bolt://neo4j:secret@localhost:7687/"
config.ENCRYPTED_CONNECTION = False
running = True
modulesOptions = ["Modulo filtros por marcas y categorias", "Modulo mezcla filtros y ratigns", "Modulo basado en ratings", "Salir"]


# print(User.nodes.first().purchases.all()[0].userReviewers().filter(lambda user: user.name == "lol"))
# print(Product.nodes.first().brand.filter(name="Nike").all())
# print(User.nodes.first().__properties__.keys())

authenticate()
while getAuth() != None:
        c = selectOptionInList("Ingrese una de las siguientes opciones", options=modulesOptions)
        if modulesOptions[c] == "Modulo filtros por marcas y categorias":
            msModule()
        elif modulesOptions[c] == "Modulo mezcla filtros y ratigns":
            mixedModule()
        elif modulesOptions[c] == "Modulo basado en ratings":
            ratingsModule()
        else:
            print("Gracias por usar el programa")
            setAuthUser(None)