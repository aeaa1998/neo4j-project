CREATE (Augusto:User {id: 1, name: 'Augusto Alonso', email: 'a@a.com', password: 'secret'})



CREATE (ElectricDevices:ProductCategory {id: 3, name: 'Electronicos'})


CREATE (Nintendo:Brand {id: 3, name: 'Nintendo'})



CREATE (NintendoSwitch:Product {id: 5, name: 'Nintendo Switch', price: 3400})
CREATE (NintendoSwitchLite:Product {id: 6, name: 'Nintendo Switch Lite', price: 2400})

CREATE
(NintendoSwitch)-[:BELOGNS_TO_BRAND]->(Nintendo),
(NintendoSwitchLite)-[:BELOGNS_TO_BRAND]->(Nintendo),

CREATE
(NintendoSwitch)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(NintendoSwitchLite)-[:BELOGNS_TO_CATEGORY]->(VideoGames),

CREATE
(Augusto)-[:PURCHASED {quantity: 1}]->(NintendoSwitch)

CREATE
(Augusto)-[:REVIEWED {comments: 'Excelente video juego' ,rating: 100}]->(NintendoSwitch),
