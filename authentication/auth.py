from models.models import User
from neomodel import Q
from utils.utils import *
from neomodel import db

authMenuOptions = ["Login", "Salir"]
authUser = None

def setAuthUser(user):
    global authUser
    authUser = user

def getAuth():
    return authUser


def authenticate():
    while True:
        decision = selectOptionInList("Ingrese que desea hacer", options=authMenuOptions)
        if authMenuOptions[decision] == "Login":
            email = input("Ingrese el email del ususario\n")
            password = input("Ingrese la contrasenña del ususario\n")
            user = User.nodes.filter(email=email, password=password)
            if len(user) != 0:
                user = user[0]
                setAuthUser(user)
                break
            else:
                print("Error al ingresar.")
        else:
            break


def getUser() -> User:
    dict = {'authUser': getAuth().email}
    results, columns = db.cypher_query(
        "MATCH (u:User) WHERE u.email <> {authUser} return u"
    , params=dict)
    users = [User.inflate(row[0]) for row in results]
    userNames = [user.name for user in users]
    userChoosen = selectOptionInList("Escoje el numero de usuario que deseas ver", userNames)
    return users[userChoosen]
