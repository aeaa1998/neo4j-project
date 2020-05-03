from neomodel import StructuredNode, StringProperty, RelationshipTo, IntegerProperty, FloatProperty, StructuredRel, NodeSet


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

class User(StructuredNode):
    id = IntegerProperty()
    name = StringProperty()
    email = StringProperty(unique_index=True)
    password = StringProperty()
    purchases = RelationshipTo(Product, 'PURCHASED')
    reviewed = RelationshipTo(Product, 'REVIEWED')

    def productsPurchasedByQuantity(self):
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[pu:PURCHASED]->(p) return p ORDER BY pu.quantity DESC"
        )

        return [Product.inflate(row[0]) for row in results]

    def productsPurchasedByRating(self):
        results, columns = self.cypher(
            "MATCH (u) WHERE id(u)={self} MATCH(u)-[re:REVIEWED]->(p) return p ORDER BY re.rating"
        )
        return [Product.inflate(row[0]) for row in results]


