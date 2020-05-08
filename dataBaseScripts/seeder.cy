CREATE (Augusto:User {id: 1, name: 'Augusto Alonso', email: 'a@a.com', password: 'secret'})
CREATE (PedroAlonso:User {id: 2, name: 'Pedro Alonso', email: 'p@a.com', password: 'secret'})
CREATE (Margarita:User {id: 3, name: 'Margarita Ascencio', email: 'm@a.com', password: 'secret'})
CREATE (David:User {id: 4, name: 'David Cuella', email: 'd@c.com', password: 'secret'})
CREATE (PedroJimenez:User {id: 5, name: 'Pedro Jimenez', email: 'p@j.com', password: 'secret'})
CREATE (JulianGabriel:User {id: 6, name: 'Julian Gabriel', email: 'j@g.com', password: 'secret'})



CREATE (Cloth:ProductCategory {id: 1, name: 'Ropa'})
CREATE (VideoGames:ProductCategory {id: 2, name: 'Video Juegos'})
CREATE (ElectricDevices:ProductCategory {id: 3, name: 'Electronicos'})



CREATE (Nike:Brand {id: 1, name: 'Nike'})
CREATE (Puma:Brand {id: 2, name: 'Puma'})
CREATE (Nintendo:Brand {id: 3, name: 'Nintendo'})
CREATE (Sony:Brand {id: 4, name: 'Sony'})
CREATE (LG:Brand {id: 5, name: 'LG'})



CREATE (NikeAirJordan:Product {id: 1, name: 'Nike Air Jordan', price: 800})
CREATE (AirMax90:Product {id: 2, name: 'Nike Air Max 90', price: 9000})
CREATE (SkyModern:Product {id: 3, name: 'Sky Modern Basketball', price: 1000})
CREATE (HST20:Product {id: 4, name: 'H.ST.20 classic', price: 3200})
CREATE (NintendoSwitch:Product {id: 5, name: 'Nintendo Switch', price: 3400})
CREATE (NintendoSwitchLite:Product {id: 6, name: 'Nintendo Switch Lite', price: 2400})
CREATE (PS4:Product {id: 7, name: 'Play Station 4', price: 3000})
CREATE (PS3:Product {id: 8, name: 'Play Station 3', price: 2000})
CREATE (SonyXperia:Product {id: 9, name: 'Sony Expiria XYM', price: 900})
CREATE (LGV60:Product {id: 10, name: 'LG V60', price: 1700})
CREATE (LGG8:Product {id: 11, name: 'LG G8', price: 1900})

CREATE
(NikeAirJordan)-[:BELOGNS_TO_BRAND]->(Nike),
(AirMax90)-[:BELOGNS_TO_BRAND]->(Nike),
(SkyModern)-[:BELOGNS_TO_BRAND]->(Puma),
(HST20)-[:BELOGNS_TO_BRAND]->(Puma),
(NintendoSwitch)-[:BELOGNS_TO_BRAND]->(Nintendo),
(NintendoSwitchLite)-[:BELOGNS_TO_BRAND]->(Nintendo),
(PS4)-[:BELOGNS_TO_BRAND]->(Sony),
(PS3)-[:BELOGNS_TO_BRAND]->(Sony),
(SonyXperia)-[:BELOGNS_TO_BRAND]->(Sony),
(LGV60)-[:BELOGNS_TO_BRAND]->(LG),
(LGG8)-[:BELOGNS_TO_BRAND]->(LG)

CREATE
(AirMax90)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NikeAirJordan)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(SkyModern)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AirMax90)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(HST20)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NintendoSwitch)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(NintendoSwitchLite)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PS4)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PS3)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(SonyXperia)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LGV60)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LGG8)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices)

CREATE
(Augusto)-[:PURCHASED {quantity: 2}]->(NikeAirJordan),
(Augusto)-[:PURCHASED {quantity: 1}]->(SkyModern),
(Augusto)-[:PURCHASED {quantity: 1}]->(HST20),
(Augusto)-[:PURCHASED {quantity: 1}]->(NintendoSwitch)

CREATE
(Augusto)-[:REVIEWED {comments: 'Excelente video juego' ,rating: 100}]->(NintendoSwitch),
(Augusto)-[:REVIEWED {comments: 'Estan sobrevalorados' ,rating: 40}]->(NikeAirJordan),
(Augusto)-[:REVIEWED {comments: 'Bonitos zapatos' ,rating: 70}]->(HST20)

CREATE
(PedroAlonso)-[:PURCHASED {quantity: 4}]->(SonyXperia),
(PedroAlonso)-[:PURCHASED {quantity: 4}]->(LGG8),
(PedroAlonso)-[:REVIEWED {comments: 'Buen telefono para mis hijos' ,rating: 100}]->(SonyXperia),
(PedroAlonso)-[:REVIEWED {comments: 'Buen telefono para oficina' ,rating: 75}]->(LGG8)

CREATE
(David)-[:PURCHASED {quantity: 1}]->(NintendoSwitchLite),
(David)-[:PURCHASED {quantity: 1}]->(PS4),
(David)-[:REVIEWED {comments: 'Muy buena consola pero no es tan comoda como la switch' ,rating: 90}]->(NintendoSwitchLite),
(David)-[:REVIEWED {comments: 'A pesar de ser una muy buena consola no tiene los mejores juegos' ,rating: 85}]->(PS4)

