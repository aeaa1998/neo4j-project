from prettytable import PrettyTable
import re
from neomodel import StructuredNode
from typing import Union, List

def intInput(text: str, sign: str = "=", limit: int = 0):
    while True:
        c = input(text + "\n")
        try:
            c = int(c)
            if sign == "=":
                return c
            elif sign == "+" and c > limit:
                return c
            elif sign == "-" and c < limit:
                return c
            print("Ingrese un valor que cumpla con el criterio solicitado.")
        except:
            print("Ingrese un valor valido.")

def intPositiveInput(text: str, limit: int = 1):
    while True:
        c = input(text + "\n")
        try:
            c = int(c)
            if 0 < c <= limit:
                return c
            print(f"Ingrese un valor que cumpla con el criterio solicitado. Mayor a 0 y menor o igual a {str(limit)}")
        except:
            print("Ingrese un valor valido.")


def floatInput(text: str, sign: str = "=", limit: float = 0):
    while True:
        c = input(text + "\n")
        try:
            c = float(c)
            if sign == "=":
                return c
            elif sign == "+" and c > limit:
                return c
            elif sign == "-" and c < limit:
                return c
            print("Ingrese un valor que cumpla con el criterio solicitado.")
        except:
            print("Ingrese un valor valido.")


def selectOptionInList(text: str,  options: list, errorString:str = "Ingrese un numero de opcion valido") -> int:
    while True:
        print(text + "\n")
        for index, value in enumerate(options):
            print(str(index + 1) + ") " + str(value))
        c = intInput("Ingrese el numero de la opcion que desea", sign="+")
        if c <= len(options):
            return c - 1
        else:
            print(errorString)


def selectModelInList(text: str,  options: List[StructuredNode], errorString:str = "Ingrese un numero de opcion valido")\
        -> StructuredNode:
    while True:
        printModels(options)
        ids = []
        for index, value in enumerate(options):
            ids.append(value.id)
        c = intInput(text, sign="+")
        if c in ids:
            for o in options:
                if o.id == c:
                    return o
        else:
            print(errorString)



def printModel(model):
    keys = [key for key in model.__properties__.keys()]
    values = [model.__properties__[key] for key in keys]
    x = PrettyTable()
    x.field_names = keys
    x.add_row(values)
    print(x)

def printModels(models: list):
    if len(models) > 0:
        keys = [key for key in models[0].__properties__.keys()]
        x = PrettyTable()
        x.field_names = keys
        for model in models:
            model = model.__properties__
            values = [model[key] for key in keys]
            x.add_row(values)
        print(x)
    else:
        print("No hay modelos")

def emailInput(text: str) -> str:
    while True:
        email = input(f"{text}\n")
        if re.match("^.+@(\[?)[a-zA-Z0-9-.]+.([a-zA-Z]{2,3}|[0-9]{1,3})(]?)$", email):
            return email
        else:
            print("Ingrese un email valido.")


def getProductBrands(products: list) -> list:
    filtered = []
    for p in products:
        for b in p.getBrands():
            if b not in filtered:
                filtered.append(b)
    return filtered

def getProductCategories(products: list) -> list:
    filtered = []
    for p in products:
        for b in p.getCategories():
            if b not in filtered:
                filtered.append(b)
    return filtered








