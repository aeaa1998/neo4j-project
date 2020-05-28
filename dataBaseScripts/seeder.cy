CREATE (Augusto:User {id: 1, name: 'Augusto Alonso', email: 'a@a.com', password: 'secret'})
CREATE (PedroAlonso:User {id: 2, name: 'Pedro Alonso', email: 'p@a.com', password: 'secret'})
CREATE (Margarita:User {id: 3, name: 'Margarita Ascencio', email: 'm@a.com', password: 'secret'})
CREATE (David:User {id: 4, name: 'David Cuellar', email: 'd@c.com', password: 'secret'})
CREATE (PedroJimenez:User {id: 5, name: 'Pedro Jimenez', email: 'p@j.com', password: 'secret'})

CREATE (JulianGabriel:User {id: 6, name: 'Julian Gabriel', email: 'j@g.com', password: 'secret'})
CREATE (Jose:User {id: 7, name: 'Jose castillo', email: 'jc@a.com', password: 'secret'})
CREATE (Melany:User {id: 8, name: 'Melany Sandoval', email: 'ms@c.com', password: 'secret'})
CREATE (Gabriel:User {id: 9, name: 'Gabriel Tenenbaum', email: 'GT@j.com', password: 'secret'})
CREATE (AnaSofia:User {id: 10, name: 'Ana Sofia', email: 'AS@g.com', password: 'secret'})
CREATE (GabrielaCortez:User {id: 11, name: 'Gabriela Cortez', email: 'GC@g.com', password: 'secret'})
CREATE (LuisJimenez:User {id: 12, name: 'Luis Jimenez', email: 'LJ@g.com', password: 'secret'})
CREATE (MariaTrujillo:User {id: 13, name: 'Maria Trujillo', email: 'MT@g.com', password: 'secret'})
CREATE (AnaLuciaSanchez:User {id: 14, name: 'Ana Sanchez', email: 'ALS@g.com', password: 'secret'})
CREATE (DiegoEstrada:User {id: 15, name: 'Diego Estrada', email: 'DE@g.com', password: 'secret'})
CREATE (FernandoGonzalez:User {id: 16, name: 'Fernando Gonzalez', email: 'FG@g.com', password: 'secret'})
CREATE (DanielHernandez:User {id: 17, name: 'Daniel Hernandez', email: 'DH@g.com', password: 'secret'})
CREATE (GermanTrinidad:User {id: 18, name: 'German trinidad', email: 'GT@g.com', password: 'secret'})
CREATE (KarlaCruz:User {id: 19, name: 'Karla Cruz', email: 'KC@g.com', password: 'secret'})
CREATE (SaraBautista:User {id: 20, name: 'Sara Bautista', email: 'SB@g.com', password: 'secret'})
CREATE (PabloMendez:User {id: 21, name: 'Pablo Mendez', email: 'PM@g.com', password: 'secret'})
CREATE (Jennifer:User {id: 22, name: 'Jennifer Alvizures', email: 'JA@g.com', password: 'secret'})



CREATE (Cloth:ProductCategory {id: 1, name: 'Ropa'})
CREATE (VideoGames:ProductCategory {id: 2, name: 'Video Juegos'})
CREATE (ElectricDevices:ProductCategory {id: 3, name: 'Electronicos'})
CREATE (Sports:ProductCategory {id: 4, name: 'Sports'})
CREATE (Groceries:ProductCategory {id: 5, name: 'Groceries'})
CREATE (Electrodomesticos:ProductCategory {id: 6, name: 'Electrodomesticos'})



CREATE (Nike:Brand {id: 1, name: 'Nike'})
CREATE (Puma:Brand {id: 2, name: 'Puma'})
CREATE (Nintendo:Brand {id: 3, name: 'Nintendo'})
CREATE (Sony:Brand {id: 4, name: 'Sony'})
CREATE (LG:Brand {id: 5, name: 'LG'})
CREATE (Zara:Brand {id: 6, name: 'Zara'})
CREATE (Aeropostale:Brand {id: 7, name: 'Aeropostale'})
CREATE (Lacoste:Brand {id: 8, name: 'Lacoste'})
CREATE (RalphLauren:Brand {id: 9, name: 'RalphLauren'})
CREATE (CalvinKlein:Brand {id: 10, name: 'CalvinKlein'})
CREATE (Microsoft:Brand {id: 11, name: 'Microsoft'})
CREATE (GAMINGCOMPUTER:Brand {id: 12, name: 'GAMINGCOMPUTER'})
CREATE (Samsung:Brand {id: 16, name: 'Samsung'})
CREATE (APPLE:Brand {id: 17, name: 'Apple'})
CREATE (DELL:Brand {id: 18, name: 'DELL'})
CREATE (HP:Brand {id: 19, name: 'HP'})
CREATE (Adidas:Brand {id: 20, name: 'Adidas'})
CREATE (UnderArmour:Brand {id: 21, name: 'UnderArmour'})
CREATE (Maller:Brand {id: 22, name: 'Maller'})
CREATE (BYB:Brand {id: 23, name: 'B&B'})
CREATE (Ducal:Brand {id: 24, name: 'Ducal'})
CREATE (Diana:Brand {id: 25, name: 'Diana'})
CREATE (Hellmans:Brand {id: 26, name: 'Hellmans'})
CREATE (Whirpool:Brand {id: 27, name: 'Whirpool'})
CREATE (Oster:Brand {id: 28, name: 'Oster'})
CREATE (GeneralElectric:Brand {id: 29, name: 'Mabe'})
CREATE (Mabe:Brand {id: 30, name: 'Mabe'})




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

CREATE (NikeAirMax:Product {id: 12, name: 'LG G8', price: 8000})
CREATE (NikeAirForceOne:Product {id: 13, name: 'NikeAirForceOne', price: 7000})
CREATE (NikeSB:Product {id: 14, name: 'NikeSB', price: 6000})
CREATE (NikeRosheRun:Product {id: 15, name: 'LG G8', price: 5000})
CREATE (FirstRound:Product {id: 16, name: 'FirstRound', price: 5200})
CREATE (Roma68:Product {id: 17, name: 'Roma68', price: 3000})
CREATE (PumaFI:Product {id: 18, name: 'PumaFI', price: 4000})
CREATE (Wii:Product {id: 19, name: 'Wii', price: 2000})
CREATE (WiiU:Product {id: 20, name: 'WiiU', price: 3000})

CREATE (GameCube:Product {id: 21, name: 'GameCube', price: 1000})
CREATE (Project64:Product {id: 22, name: 'Project64', price: 800})
CREATE (PSP:Product {id: 23, name: 'PSP', price: 1000})
CREATE (PS2:Product {id: 24, name: 'PS2', price: 2000})
CREATE (LGrefri:Product {id: 25, name: 'LG refigeradora', price: 12000})


CREATE (LGestufa:Product {id: 26, name: 'LG estufa', price: 15000})
CREATE (LGLavadora:Product {id: 27, name: 'LG Lavadora', price: 13000})
CREATE (LGG7:Product {id: 28, name: 'LG G7', price: 4000})
CREATE (LGG6:Product {id: 29, name: 'LG G6', price: 3000})
CREATE (ZaraCamisa:Product {id: 30, name: 'Camisa Zara', price: 1500})


CREATE (ZaraPantalon:Product {id: 31, name: "Pantalon Zara", price: 800})
CREATE (ZaraSueter:Product {id: 32, name: 'Sueter Zara', price: 1400})
CREATE (ZaraBlusa:Product {id: 33, name: 'Blusa Zara', price: 900})
CREATE (ZaraBolso:Product {id: 34, name: 'Bolso Zara', price: 2000})
CREATE (AeropostaleCamisa:Product {id: 35, name: 'Camisa Aeropostale', price: 700})


CREATE (AeropostalePantalon:Product {id: 36, name: 'Pantalon Aeropostale', price: 1000})
CREATE (AeropostaleChumpa:Product {id: 37, name: 'Chumpa Aeropostale', price: 1400})
CREATE (AeropostaleBlusa:Product {id: 38, name: 'Bluesa Aeropostale', price: 800})
CREATE (AeropostaleSueter:Product {id: 39, name: 'Sueter Aeropostale', price: 1100})
CREATE (LacosteCamisa:Product {id: 40, name: 'Camisa Lacoste', price: 900})

CREATE (LacostePantalon:Product {id: 41, name: 'Pantalon Lacoste', price: 700})
CREATE (LacosteChumpa:Product {id: 42, name: 'Chumpa Lacoste', price: 2000})
CREATE (LacosteSueter:Product {id: 43, name: 'Sueter Lacoste', price: 1300})
CREATE (LacosteBlusa:Product {id: 44, name: 'Blusa Lacoste', price: 600})
CREATE (RalphLaurenCamisa:Product {id: 45, name: 'Camisa Ralph Lauren', price: 1200})


CREATE (RalphLaurenBolso:Product {id: 46, name: 'Bolso Ralph Lauren', price: 2300})
CREATE (RalphLaurenBlusa:Product {id: 47, name: 'Blusa Ralph Lauren', price: 2000})
CREATE (RalphLaurenSueter:Product {id: 48, name: 'Sueter Ralph Lauren', price: 1100})
CREATE (RalphLaurenChumpa:Product {id: 49, name: 'Chumpa Ralph Lauren', price: 3000})
CREATE (CalvinCamisa:Product {id: 50, name: 'camisa Calvin Klein', price: 1500})


CREATE (CalvinPantalon:Product {id: 51, name: 'Pantalon Calvin Klein', price: 1600})
CREATE (CalvinCinturon:Product {id: 52, name: 'Cinturon Calvin Klein', price: 600})
CREATE (CalvinCorbata:Product {id: 53, name: 'Corbata Calvin Klein', price: 300})
CREATE (CalvinSueter:Product {id: 54, name: 'Sueter Calvin Klein', price: 2000})
CREATE (Xbox:Product {id: 55, name: 'Xbox', price: 5000})
CREATE (MicroLaptop:Product {id: 56, name: 'Microsoft Laptop', price: 4000})
CREATE (MicroTablet:Product {id: 57, name: 'Microsoft Tablet', price: 2000})
CREATE (MicroPC:Product {id: 58, name: 'Microsoft Pc', price: 8000})
CREATE (MicrosoftOffice:Product {id: 59, name: 'Microsoft Office Licencia', price: 500})
CREATE (AlienWare:Product {id: 60, name: 'AlienWare', price: 12000})
CREATE (Asus:Product {id: 61, name: 'Asus', price: 10000})
CREATE (MSIcomputer:Product {id: 62, name: 'MSIcomputer', price: 11000})
CREATE (SamsungGalaxi10:Product {id: 63, name: 'Samsung Galaxi 10', price: 5000})
CREATE (LavadoraSamsung:Product {id: 64, name: 'Lavadora Samsung', price: 15000})
CREATE (RefrigeradoraSamsung:Product {id: 65, name: 'Refrigeradora Samsung', price: 13000})
CREATE (SecadoraSamsung:Product {id: 66, name: 'Secadora Samsung', price: 14000})
CREATE (TabletSamsung:Product {id: 67, name: 'TabletSamsung', price: 6000})
CREATE (TelevisionSamsung:Product {id: 68, name: 'Television Samsung', price: 12000})
CREATE (HeadPhonesSamsung:Product {id: 69, name: 'HeadPhones Samsung', price: 1000})
CREATE (CameraSamsung:Product {id: 70, name: 'Camara Samsung', price: 4000})
CREATE (Mac:Product {id: 71, name: 'Mac', price: 8000})
CREATE (Iphone10:Product {id: 72, name: 'Iphone10', price: 65000})
CREATE (Iphone11:Product {id: 73, name: 'Iphone11', price: 9000})
CREATE (Airpods:Product {id: 74, name: 'Airpods', price: 1900})
CREATE (MacPro:Product {id: 75, name: 'MacPro', price: 11000})
CREATE (DELLlaptopGrande:Product {id: 76, name: 'DELL laptop Grande', price: 12000})
CREATE (DelllaptopPeque:Product {id: 77, name: 'Dell laptop Pequena', price: 8000})
CREATE (Dellmouse:Product {id: 78, name: 'Dell mouse', price: 200})
CREATE (DellGPU:Product {id: 79, name: 'Dell GPU', price: 3000})
CREATE (DellGarantia:Product {id: 80, name: 'Garantia Dell', price: 3000})
CREATE (HPimpresora:Product {id: 81, name: 'HP impresora', price: 1900})
CREATE (HPmonitor:Product {id: 82, name: 'HP monitor', price: 900})
CREATE (HPlaptop:Product {id: 83, name: 'HP laptop', price: 8900})
CREATE (HPcpu:Product {id: 84, name: 'HP CPU', price: 6000})
CREATE (HPgpu:Product {id: 85, name: 'HP GPU', price: 1900})
CREATE (AdidasPlayera:Product {id: 86, name: 'Playera Adidas', price: 900})
CREATE (AdidasSudadera:Product {id: 87, name: 'Sudadera Adidas', price: 1100})
CREATE (AdidasTennis:Product {id: 88, name: 'Tennis Adidas', price: 2500})
CREATE (AdidasMochila:Product {id: 89, name: 'Mochila Adidas', price: 700})
CREATE (AdidasFooball:Product {id: 90, name: "Football Adidas", price: 3000})
CREATE (UnderPlayera:Product {id: 91, name: 'Playera UnderArmour', price: 1900})
CREATE (UnderTenis:Product {id: 92, name: 'Tennis UnderArmour', price: 2900})
CREATE (UnderMochila:Product {id: 93, name: 'Mochila UnderArmour', price: 900})
CREATE (UnderGorra:Product {id: 94, name: 'Gorra UnderArmour', price: 300})
CREATE (UnderPantaloneta:Product {id: 95, name: 'Pantaloneta UnderArmour', price: 400})
CREATE (BYBorchata:Product {id: 96, name: 'Orchata B&B', price: 20})
CREATE (BYBsalsa:Product {id: 97, name: 'Salsa B&B', price: 15})
CREATE (BYBmayonesa:Product {id: 98, name: 'Mayonesa B&B', price: 17})
CREATE (BYBpicante:Product {id: 99, name: 'Picante B&B', price: 13})
CREATE (Ducalvolteados:Product {id: 100, name: 'Frijoles Ducal Volteados', price: 20})
CREATE (Ducalparados:Product {id: 96, name: 'Frijoles parados Ducal', price: 25})
CREATE (DucalBote:Product {id: 97, name: 'Frijol Ducal Bote', price: 10})
CREATE (DucalBolsa:Product {id: 98, name: 'Frijol Bosa Ducal', price: 13})
CREATE (DianaJalapeno:Product {id: 99, name: 'Jalapeno Diana', price: 18})
CREATE (DianaNacho:Product {id: 100, name: 'Nachos Diana', price: 4})
CREATE (DianaAlboroto:Product {id: 96, name: 'Alboroto Diana', price: 3})
CREATE (WhirpoolRefri:Product {id: 97, name: 'Whirpool Refrigeradora', price: 19000})
CREATE (WhirpoolLavadora:Product {id: 98, name: 'Lavadora Whirpool', price: 14000})
CREATE (WhirpoolSecadora:Product {id: 99, name: 'Secadora Whirpool', price: 12900})
CREATE (MabeEstufa:Product {id: 100, name: 'Estufa Mabe', price: 12000})
CREATE (MabeLavadora:Product {id: 96, name: 'Lavadora Mabe', price: 11900})
CREATE (MabeRefri:Product {id: 97, name: 'Refrigeradora Mabe', price: 13000})
CREATE (MabeSecadora:Product {id: 98, name: 'Secadora Mabe', price: 12000})



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
(LGG8)-[:BELOGNS_TO_BRAND]->(LG),

(NikeAirMax)-[:BELOGNS_TO_BRAND]->(Nike),
(NikeAirForceOne)-[:BELOGNS_TO_BRAND]->(Nike),
(NikeSB)-[:BELOGNS_TO_BRAND]->(Nike),
(NikeRosheRun)-[:BELOGNS_TO_BRAND]->(Nike),
(FirstRound)-[:BELOGNS_TO_BRAND]->(Puma),
(Roma68)-[:BELOGNS_TO_BRAND]->(Puma),
(PumaFI)-[:BELOGNS_TO_BRAND]->(Puma),
(Wii)-[:BELOGNS_TO_BRAND]->(Nintendo),
(WiiU)-[:BELOGNS_TO_BRAND]->(Nintendo),
(GameCube)-[:BELOGNS_TO_BRAND]->(Nintendo),
(Project64)-[:BELOGNS_TO_BRAND]->(Nintendo),
(PSP)-[:BELOGNS_TO_BRAND]->(Sony),
(PS2)-[:BELOGNS_TO_BRAND]->(Sony),
(LGrefri)-[:BELOGNS_TO_BRAND]->(LG),
(LGestufa)-[:BELOGNS_TO_BRAND]->(LG),
(LGLavadora)-[:BELOGNS_TO_BRAND]->(LG),
(LGG7)-[:BELOGNS_TO_BRAND]->(LG),
(LGG6)-[:BELOGNS_TO_BRAND]->(LG),
(ZaraCamisa)-[:BELOGNS_TO_BRAND]->(Zara),
(ZaraPantalon)-[:BELOGNS_TO_BRAND]->(Zara),
(ZaraSueter)-[:BELOGNS_TO_BRAND]->(Zara),
(ZaraBlusa)-[:BELOGNS_TO_BRAND]->(Zara),
(ZaraBolso)-[:BELOGNS_TO_BRAND]->(Cloth),
(AeropostaleCamisa)-[:BELOGNS_TO_BRAND]->(Aeropostale),
(AeropostalePantalon)-[:BELOGNS_TO_BRAND]->(Aeropostale),
(AeropostaleChumpa)-[:BELOGNS_TO_BRAND]->(Aeropostale),
(AeropostaleBlusa)-[:BELOGNS_TO_BRAND]->(Aeropostale),
(AeropostaleSueter)-[:BELOGNS_TO_BRAND]->(Aeropostale),
(LacosteCamisa)-[:BELOGNS_TO_BRAND]->(Lacoste),
(LacostePantalon)-[:BELOGNS_TO_BRAND]->(Lacoste),
(LacosteChumpa)-[:BELOGNS_TO_BRAND]->(Lacoste),
(LacosteSueter)-[:BELOGNS_TO_BRAND]->(Lacoste),
(LacosteBluesa)-[:BELOGNS_TO_BRAND]->(Lacoste),
(RalphaLaurenCamisa)-[:BELOGNS_TO_BRAND]->(RalphLauren),
(RalphaLaurenBolso)-[:BELOGNS_TO_BRAND]->(RalphLauren),
(RalphaLaurenBlusa)-[:BELOGNS_TO_BRAND]->(RalphLauren),
(RalphaLaurenSueter)-[:BELOGNS_TO_BRAND]->(RalphLauren),
(RalphaLaurenChumpa)-[:BELOGNS_TO_BRAND]->(RalphLauren),
(CalvinCamisa)-[:BELOGNS_TO_BRAND]->(CalvinKlein),
(CalvinPantalon)-[:BELOGNS_TO_BRAND]->(CalvinKlein),
(CalvinCinturon)-[:BELOGNS_TO_BRAND]->(CalvinKlein),
(CalvinCorbata)-[:BELOGNS_TO_BRAND]->(CalvinKlein),
(CalvinSueter)-[:BELOGNS_TO_BRAND]->(CalvinKlein),
(Xbox)-[:BELOGNS_TO_BRAND]->(Microsoft),
(MicroLaptop)-[:BELOGNS_TO_BRAND]->(Microsoft),
(MicroTablet)-[:BELOGNS_TO_BRAND]->(Microsoft),
(MicroPC)-[:BELOGNS_TO_BRAND]->(Microsoft),
(MicrosoftOffice)-[:BELOGNS_TO_BRAND]->(Microsoft),
(AlienWare)-[:BELOGNS_TO_BRAND]->(GAMINGCOMPUTER),
(Asus)-[:BELOGNS_TO_BRAND]->(GAMINGCOMPUTER),
(MSIcomputer)-[:BELOGNS_TO_BRAND]->(GAMINGCOMPUTER),
(SamsungGalaxi10)-[:BELOGNS_TO_BRAND]->(GAMINGCOMPUTER),
(LavadoraSamsung)-[:BELOGNS_TO_BRAND]->(GAMINGCOMPUTER),
(RefrigeradoraSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(SecadoraSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(TabletSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(TelevisionSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(HeadPhonesSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(CameraSamsung)-[:BELOGNS_TO_BRAND]->(Samsung),
(Mac)-[:BELOGNS_TO_BRAND]->(Apple),
(Iphone10)-[:BELOGNS_TO_BRAND]->(Apple),
(Iphone11)-[:BELOGNS_TO_BRAND]->(Apple),
(Airpods)-[:BELOGNS_TO_BRAND]->(Apple),
(MacPro)-[:BELOGNS_TO_BRAND]->(Apple),
(DELLlaptopGrande)-[:BELOGNS_TO_BRAND]->(DELL),
(DELLlaptopPeque)-[:BELOGNS_TO_BRAND]->(DELL),
(Dellmouse)-[:BELOGNS_TO_BRAND]->(DELL),
(DellGPU)-[:BELOGNS_TO_BRAND]->(DELL),
(DellGarantia)-[:BELOGNS_TO_BRAND]->(DELL),
(HPimpresora)-[:BELOGNS_TO_BRAND]->(HP),
(HPmonitor)-[:BELOGNS_TO_BRAND]->(HP),
(HPlaptop)-[:BELOGNS_TO_BRAND]->(HP),
(HPcpu)-[:BELOGNS_TO_BRAND]->(HP),
(HPgpu)-[:BELOGNS_TO_BRAND]->(HP),
(AdidasPlayera)-[:BELOGNS_TO_BRAND]->(Adidas),
(AdidasSudadera)-[:BELOGNS_TO_BRAND]->(Adidas),
(AdidasTennis)-[:BELOGNS_TO_BRAND]->(Adidas),
(AdidasMochila)-[:BELOGNS_TO_BRAND]->(Adidas),
(AdidasFooball)-[:BELOGNS_TO_BRAND]->(Adidas),
(UnderPlayera)-[:BELOGNS_TO_BRAND]->(UnderArmour),
(UnderTenis)-[:BELOGNS_TO_BRAND]->(UnderArmour),
(UnderMochila)-[:BELOGNS_TO_BRAND]->(UnderArmour),
(UnderGorra)-[:BELOGNS_TO_BRAND]->(UnderArmour),
(UnderPantaloneta)-[:BELOGNS_TO_BRAND]->(UnderArmour),
(BYBorchata)-[:BELOGNS_TO_BRAND]->(BYB),
(BYBsalsa)-[:BELOGNS_TO_BRAND]->(BYB),
(BYBmayonesa)-[:BELOGNS_TO_BRAND]->(BYB),
(BYBpicante)-[:BELOGNS_TO_BRAND]->(BYB),
(Ducalvolteados)-[:BELOGNS_TO_BRAND]->(Ducal),
(Ducalparados)-[:BELOGNS_TO_BRAND]->(Ducal),
(DucalBote)-[:BELOGNS_TO_BRAND]->(Ducal),
(DucalBolsa)-[:BELOGNS_TO_BRAND]->(Ducal),
(DianaJalapeno)-[:BELOGNS_TO_BRAND]->(Diana),
(DianaNacho)-[:BELOGNS_TO_BRAND]->(Diana),
(DianaAlboroto)-[:BELOGNS_TO_BRAND]->(Diana),
(WhirpoolRefri)-[:BELOGNS_TO_BRAND]->(Whirpool),
(WhirpoolLavadora)-[:BELOGNS_TO_BRAND]->(Whirpool),
(WhirpoolSecadora)-[:BELOGNS_TO_BRAND]->(Whirpool),
(MabeEstufa)-[:BELOGNS_TO_BRAND]->(Mabe),
(MabeLavadora)-[:BELOGNS_TO_BRAND]->(Mabe),
(MabeRefri)-[:BELOGNS_TO_BRAND]->(Mabe),
(MabeSecadora)-[:BELOGNS_TO_BRAND]->(Mabe)



CREATE

(AirMax90)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NikeAirJordan)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(SkyModern)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(HST20)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NintendoSwitch)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(NintendoSwitchLite)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PS4)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PS3)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(SonyXperia)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LGV60)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LGG8)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(NikeAirMax)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NikeAirForceOne)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NikeSB)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(NikeRosheRun)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(FirstRound)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(Roma68)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(PumaFI)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(Wii)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(WiiU)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(GameCube)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(Project64)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PSP)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(PS2)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(LGrefri)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(LGestufa)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(LGLavadora)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(LGG7)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LGG6)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(ZaraCamisa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(ZaraPantalon)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(ZaraSueter)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(ZaraBlusa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(ZaraBolso)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AeropostaleCamisa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AeropostalePantalon)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AeropostaleChumpa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AeropostaleBlusa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(AeropostaleSueter)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(LacosteCamisa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(LacostePantalon)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(LacosteChumpa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(LacosteSueter)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(LacosteBlusa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(RalphaLaurenCamisa)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(RalphaLaurenBolso)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(RalphaLaurenBlusa)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(RalphaLaurenSueter)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(RalphaLaurenChumpa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(CalvinCamisa)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(CalvinPantalon)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(CalvinCinturon)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(CalvinCorbata)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(CalvinSueter)-[:BELOGNS_TO_CATEGORY]->(Cloth),
(Xbox)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(MicroLaptop)-[:BELOGNS_TO_CATEGORY]->(VideoGames),
(MicroTablet)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(MicroPC)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(MicrosoftOffice)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(AlienWare)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Asus)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(MSIcomputer)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(SamsungGalaxi10)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(LavadoraSamsung)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(RefrigeradoraSamsung)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(SecadoraSamsung)-[:BELOGNS_TO_CATEGORY]->(Electrodomesticos),
(TabletSamsung)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(TelevisionSamsung)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HeadPhonesSamsung)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(CameraSamsung)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Mac)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Iphone10)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Iphone11)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Airpods)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(MacPro)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(DELLlaptopGrande)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(DELLlaptopPeque)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(Dellmouse)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(DellGPU)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(DellGarantia)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HPimpresora)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HPmonitor)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HPlaptop)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HPcpu)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(HPgpu)-[:BELOGNS_TO_CATEGORY]->(ElectricDevices),
(AdidasPlayera)-[:BELOGNS_TO_CATEGORY]->(Sports),
(AdidasSudadera)-[:BELOGNS_TO_CATEGORY]->(Sports),
(AdidasTennis)-[:BELOGNS_TO_CATEGORY]->(Sports),
(AdidasMochila)-[:BELOGNS_TO_CATEGORY]->(Sports),
(AdidasFooball)-[:BELOGNS_TO_CATEGORY]->(Sports),
(UnderPlayera)-[:BELOGNS_TO_CATEGORY]->(Sports),
(UnderTenis)-[:BELOGNS_TO_CATEGORY]->(Sports),
(UnderMochila)-[:BELOGNS_TO_CATEGORY]->(Sports),
(UnderGorra)-[:BELOGNS_TO_CATEGORY]->(Sports),
(UnderPantaloneta)-[:BELOGNS_TO_CATEGORY]->(Sports),
(BYBorchata)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(BYBsalsa)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(BYBmayonesa)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(BYBpicante)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(Ducalvolteados)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(Ducalparados)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(DucalBote)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(DucalBolsa)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(DianaJalapeno)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(DianaNacho)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(DianaAlboroto)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(WhirpoolRefri)-[:BELOGNS_TO_CATEGORY]->(Groceries),
(WhirpoolLavadora)-[:BELOGNS_TO_CATEGORY]->(Electromesticos),
(WhirpoolSecadora)-[:BELOGNS_TO_CATEGORY]->(Electromesticos),
(MabeEstufa)-[:BELOGNS_TO_CATEGORY]->(Electromesticos),
(MabeLavadora)-[:BELOGNS_TO_CATEGORY]->(Electromesticos),
(MabeRefri)-[:BELOGNS_TO_CATEGORY]->(Electromesticos),
(MabeSecadora)-[:BELOGNS_TO_CATEGORY]->(Electromesticos)

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

CREATE
(Margarita)-[:PURCHASED {quantity: 1}]->(AirMax90),
(Margarita)-[:PURCHASED {quantity: 1}]->(LacosteBlusa),
(Margarita)-[:REVIEWED {comments: 'Se siente bien cuando uno usa ropa de calidad' ,rating: 95}]->(LacosteBlusa)

CREATE
(PedroJimendez)-[:PURCHASED {quantity: 1}]->(DianaJalapeno),
(PedroJimendez)-[:PURCHASED {quantity: 1}]->(Ducalvolteados),
(PedroJimendez)-[:REVIEWED {comments: 'Me gustan bastante los jalapenos con frijolitos es lo mejor' ,rating: 100}]->(DianaJalapeno)

CREATE
(JulianGabriel)-[:PURCHASED {quantity: 1}]->(HPimpresora),
(JulianGabriel)-[:PURCHASED {quantity: 1}]->(MacPro),
(JulianGabriel)-[:REVIEWED {comments: 'Me gusta la elegancia y la marca pero por este precio creo que hubiera conseguido algo mejor' ,rating: 70}]->(MacPro)

CREATE
(Jose)-[:PURCHASED {quantity: 1}]->(AdidasPlayera),
(Jose)-[:PURCHASED {quantity: 1}]->(AdidasTennis),
(Jose)-[:REVIEWED {comments: 'Es la mejor marca para articulos deportivos la playera me hace sentir fresco cuando corro' ,rating: 90}]->(AdidasTennis)

CREATE
(Melany)-[:PURCHASED {quantity: 1}]->(Iphone11),
(Melany)-[:PURCHASED {quantity: 1}]->(Airpods),
(Melany)-[:REVIEWED {comments: 'Me encanta la triple camara que trae pero los airpods dejan mucho que desear' ,rating: 80}]->(Iphone11)

CREATE
(Gabriel)-[:PURCHASED {quantity: 1}]->(MabeEstufa),
(Gabriel)-[:PURCHASED {quantity: 1}]->(MabeRefri),
(Gabriel)-[:REVIEWED {comments: 'La estufa le encanto a mi mama pero la refri es demasiado pequena y hace ruido' ,rating: 60}]->(MabeRefri)

CREATE
(AnaSofia)-[:PURCHASED {quantity: 1}]->(HPcpu),
(AnaSofia)-[:PURCHASED {quantity: 1}]->(HPgpu),
(AnaSofia)-[:REVIEWED {comments: 'No recomiendo para nada esta tarjeta grafica a nadie, no me corre el inventor bien' ,rating: 40}]->(HPgpu)

CREATE
(GabrielaCortez)-[:PURCHASED {quantity: 1}]->(SamsungGalaxi10),
(GabrielaCortez)-[:PURCHASED {quantity: 1}]->(TelevisionSamsung),
(GabrielaCortez)-[:REVIEWED {comments: 'Valio la pena cada centavo esa television es impresionante como se ven las peliculas ahora en esta tele' ,rating: 100}]->(TelevisionSamsung)

CREATE
(Jennifer)-[:PURCHASED {quantity: 1}]->(ZaraBlusa),
(Jennifer)-[:PURCHASED {quantity: 1}]->(ZaraBolso),
(Jennifer)-[:REVIEWED {comments: 'Todos hablan de esta marca pero ahora que la pruebo no me parece nada espectacular las piezas son algo raras' ,rating: 50}]->(NintendoSwitchLite)

CREATE
(LuisJimenez)-[:PURCHASED {quantity: 1}]->(RalphLaurenCamisa),
(LuisJimenez)-[:PURCHASED {quantity: 1}]->(RalphLaurenChumpa),
(LuisJimenez)-[:REVIEWED {comments: 'Por alguna razon cuando utilizo esta chumpa me siento mucho mejor conmigo mismo' ,rating: 100}]->(RalphLaurenChumpa)

CREATE
(MariaTrujillo)-[:PURCHASED {quantity: 1}]->(CalvinCamisa),
(MariaTrujillo)-[:PURCHASED {quantity: 1}]->(CalvinPantalon),
(MariaTrujillo)-[:REVIEWED {comments: 'A mi novio le encantan estas camisas y pantalones desafortundamente creo que el color no le convencion pero se ve feliz con su regalo' ,rating: 90}]->(NintendoSwitchLite)

CREATE
(AnaLuciaSanchez)-[:PURCHASED {quantity: 1}]->(WiiU),
(AnaLuciaSanchez)-[:PURCHASED {quantity: 1}]->(AeropostaleBlusa),
(AnaLuciaSanchez)-[:REVIEWED {comments: 'No se parecia para nada a la de la foto' ,rating: 30}]->(AeropostaleBlusa)

CREATE
(DiegoEstrada)-[:PURCHASED {quantity: 1}]->(BYBorchata),
(DiegoEstrada)-[:PURCHASED {quantity: 1}]->(DianaNacho),
(DiegoEstrada)-[:REVIEWED {comments: 'Me encanta la orchata fria para los fines de semana' ,rating: 80}]->(BYBorchata)


CREATE
(FernandoGonzalez)-[:PURCHASED {quantity: 1}]->(UnderGorra),
(FernandoGonzalez)-[:PURCHASED {quantity: 1}]->(UnderPantaloneta),
(FernandoGonzalez)-[:REVIEWED {comments: 'Me parece la mejor relacion calidad precio respecto a cosas deportivas' ,rating: 100}]->(UnderGorra)

CREATE
(DanielHernandez)-[:PURCHASED {quantity: 1}]->(WhirpoolRefri),
(DanielHernandez)-[:PURCHASED {quantity: 1}]->(WhirpoolLavadora),
(DanielHernandez)-[:REVIEWED {comments: 'Whirpool es la mejor marca de electrodomesticos actualmente son mas duraderos y resistentes' ,rating: 100}]->(WhirpoolRefri)


CREATE
(GermanTrinidad)-[:PURCHASED {quantity: 1}]->(AlienWare),
(GermanTrinidad)-[:PURCHASED {quantity: 1}]->(Xbox),
(GermanTrinidad)-[:REVIEWED {comments: 'No se si sea la mejor marca de computadoras gaming pero estoy muy satisfecho' ,rating: 90}]->(AlienWare)


CREATE
(KarlaCruz)-[:PURCHASED {quantity: 1}]->(MicrosoftOffice),
(KarlaCruz)-[:PURCHASED {quantity: 1}]->(DellGarantia),
(KarlaCruz)-[:REVIEWED {comments: 'Es algo necesario para nuestro dia a dia sin embargo se necesita mejorar' ,rating: 70}]->(MicrosoftOffice)

CREATE
(SaraBautista)-[:PURCHASED {quantity: 1}]->(MicroPC),
(SaraBautista)-[:PURCHASED {quantity: 1}]->(BYBsalsa),
(SaraBautista)-[:REVIEWED {comments: 'Esta salsa me recuerda a cuando era nina' ,rating: 90}]->(BYBsalsa)

CREATE
(PabloMendez)-[:PURCHASED {quantity: 1}]->(UnderMochila),
(PabloMendez)-[:PURCHASED {quantity: 1}]->(Mac),
(PabloMendez)-[:REVIEWED {comments: 'Esta muy bonita ojala me dure me preocupa que aunque sea barata no dure' ,rating: 90}]->(UnderMochila)

