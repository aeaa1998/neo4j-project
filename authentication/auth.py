from models.models import User
from neomodel import Q
from utils.utils import *
from neomodel import db

authMenuOptions = ["Login", "Registrarse", "Salir"]
yesNo = ["Si", "No"]
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
        if authMenuOptions[decision] == "Registrarse":
            registerUser()
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


# CREATE (Jennifer:User {id: 22, name: 'Jennifer Alvizures', email: 'JA@g.com', password: 'secret'})

def registerUser():
    registering = True
    name = input("Ingrese su nombre:\n")
    while registering:
        email = emailInput(f"{name} ingresa el email de usuario que desea crear:")
        user = User.nodes.filter(email=email)
        if len(user) == 0:
            password = input(f"{name} ingresa la contraseña:\n")
            User(id=User.nodes.order_by('-id')[0].id + 1, name=name, email=email, password=password).saveUser()
            print("Usuario creado\n")
            registering = False
        else:
            print(f"El usuario {name}-{email} ha sido creado.")
            decision = selectOptionInList("Ingrese si desea volver a ingresar el email:", options=yesNo)
            if yesNo[decision] == "No":
                registering = False
