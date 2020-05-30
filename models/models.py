from neomodel import StructuredNode, StringProperty, RelationshipTo, IntegerProperty, FloatProperty, StructuredRel, \
    NodeSet
from utils.utils import *


class Brand(StructuredNode):
    id = IntegerProperty()
    name = StringProperty()

    def products(self):
        results, columns = self.cypher("MATCH (p:Product)-[:BELOGNS_TO_BRAND]->(a) WHERE id(a)={self} return p")
        return [Product.inflate(row[0]) for row in results]


class BrandRelation(StructuredRel):
    id = IntegerProperty()
    name = StringProperty()

    def products(self):
        results, columns = self.cypher("MATCH (p:Product)-[:BELOGNS_TO_BRAND]->(a) WHERE id(a)={self} return p")
        return [Product.inflate(row[0]) for row in results]


class ProductCategory(StructuredNode):
    id = IntegerProperty()
    name = StringProperty()

    def products(self):
        results, columns = self.cypher("MATCH (p:Product)-[:BELOGNS_TO_CATEGORY]->(a) WHERE id(a)={self} return p")
        return [Product.inflate(row[0]) for row in results]


class Product(StructuredNode):
    id = IntegerProperty()
    name = StringProperty()
    price = FloatProperty()
    category = RelationshipTo(ProductCategory, 'BELOGNS_TO_CATEGORY')
    brand = RelationshipTo(Brand, 'BELOGNS_TO_BRAND', model=BrandRelation)

    def userReviewers(self):
        results, columns = self.cypher("MATCH (u:User)-[:REVIEWED]->(a) WHERE id(a)={self} return u")
        return [User.inflate(row[0]) for row in results]

    def userPurchasers(self):
        results, columns = self.cypher("MATCH (u:User)-[:PURCHASED]->(a) WHERE id(a)={self} return u")
        return [User.inflate(row[0]) for row in results]

    def getBrands(self):
        results, columns = self.cypher(
            "MATCH (p) WHERE id(p)={self} MATCH(p)-[:BELOGNS_TO_BRAND]->(b) return b"
        )

        return [Brand.inflate(row[0]) for row in results]

    def getCategories(self):
        results, columns = self.cypher(
            "MATCH (p) WHERE id(p)={self} MATCH(p)-[:BELOGNS_TO_CATEGORY]->(c) return c"
        )

        return [ProductCategory.inflate(row[0]) for row in results]


class User(StructuredNode):
    id = IntegerProperty()
    name = StringProperty()
    email = StringProperty(unique_index=True)
    password = StringProperty()
    purchases = RelationshipTo(Product, 'PURCHASED')
    reviewed = RelationshipTo(Product, 'REVIEWED')

    # @staticmethod
    def saveUser(self):
        self.cypher(
            "CREATE (u:User {id: "+str(self.id)+", name: '"+self.name.__str__()+"', email: '"+self.email.__str__()+"', password: '"+self.password.__str__()+"'})"
        )

    def productsPurchasedByQuantity(self):
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[pu:PURCHASED]->(p) return p ORDER BY pu.quantity DESC"
        )

        return [Product.inflate(row[0]) for row in results]

    def productsPurchasedByRating(self):
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[re:REVIEWED]->(p) return p ORDER BY re.rating DESC"
        )
        return [Product.inflate(row[0]) for row in results]

    def productsPurchasedAndNotRated(self):
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[pu:PURCHASED]->(p) return p"
        )
        productsPurchased = [Product.inflate(row[0]) for row in results]
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[re:REVIEWED]->(p) return p"
        )
        productsReviewed = [Product.inflate(row[0]) for row in results]
        filtered = []
        for productPurchased in productsPurchased:
            if productPurchased not in productsReviewed:
                filtered.append(productPurchased)
        return filtered


    def resolveAction(self, product, type: str):
        if type == "pu":
            self.buyProduct(product)
        else:
            self.reviewProduct(product)
    def reviewProduct(self, product):
        comment = input("Ingrese un comentario acerca del producto:\n")
        rating = intPositiveInput("Ingrese su rating de 1 a 100:", 100)
        self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(p:Product) where id(p) = " + str(product.id) + "\n CREATE (u)-[:REVIEWED" +
            "{comments: '" + comment + "', rating: " + str(rating) + "}]->(p)"
        )

    def buyProduct(self, product):
        quantity = intPositiveInput("Ingrese la cantidad de productos que desea comprar:", 10000000)
        if product in self.productsPurchasedByQuantity():
            self.cypher(
                "MATCH (u) WHERE id(u)={self} MATCH(u)-[pu:PURCHASED]->(p) where id(p) = " + str(product.id) + "\n "
               "SET pu.quantity = " + str(quantity) + " + pu.quantity"
            )
        else:
            self.cypher(
                "MATCH (u) WHERE id(u)={self} MATCH(p:Product) where id(p) = " + str(product.id) + "\n CREATE (u)-[:PURCHASED" +
                "{quantity: " + str(quantity) + "}]->(p)"
            )
