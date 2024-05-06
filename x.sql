+-------------------+--------------+------+-----+---------+-------+
| gama_producto                                                   |
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| gama              | varchar(50)  | NO   | PRI | NULL    |       |
| descripcion_texto | text         | YES  |     | NULL    |       |
| descripcion_html  | text         | YES  |     | NULL    |       |
| imagen            | varchar(256) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
CREATE TABLE gama_producto (
    gama VARCHAR(50),
    descripcion_texto TEXT,
    descripcion_html TEXT,
    imagen VARCHAR(256),
    PRIMARY KEY (gama)
);

INSERT INTO gama_producto VALUES 
    ('Herbaceas','Plantas para jardin decorativas',NULL,NULL),
    ('Herramientas','Herramientas para todo tipo de acción',NULL,NULL),
    ('Aromáticas','Plantas aromáticas',NULL,NULL),
    ('Frutales','Árboles pequeños de producción frutal',NULL,NULL),
    ('Ornamentales','Plantas vistosas para la decoración del jardín',NULL,NULL);

+-------------------+---------------+------+-----+---------+-------+
| producto                                                         |
+-------------------+---------------+------+-----+---------+-------+
| Field             | Type          | Null | Key | Default | Extra |
+-------------------+---------------+------+-----+---------+-------+
| id_producto       | varchar(15)   | NO   | PRI | NULL    |       |
| nombre            | varchar(70)   | YES  |     | NULL    |       |
| gama              | varchar(50)   | YES  |     | NULL    |       |
| dimensiones       | varchar(25)   | YES  |     | NULL    |       |
| id_proveedor      | varchar(50)   | YES  | MUL | NULL    |       |
| descripcion       | text          | YES  |     | NULL    |       |
| cantidad_en_stock | smallint      | YES  |     | NULL    |       |
| precio_venta      | decimal(15,2) | YES  |     | NULL    |       |
| precio_proveedor  | decimal(15,2) | YES  |     | NULL    |       |
+-------------------+---------------+------+-----+---------+-------+
CREATE TABLE producto (
    id_producto VARCHAR(15),
    nombre VARCHAR(70),
    gama VARCHAR(50),
    dimensiones VARCHAR(25),
    id_proveedor VARCHAR(50),
    descripcion TEXT,
    cantidad_en_stock SMALLINT(6),
    precio_venta DECIMAL(15,2),
    precio_proveedor DECIMAL(15,2),
    PRIMARY KEY (id_producto),
    FOREIGN KEY (gama) REFERENCES gama_producto(gama),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
);

INSERT INTO producto VALUES 
    ('11679','Sierra de Poda 400MM','Herramientas','0,258',1 ,'Gracias a la poda se consigue manipular un poco la naturaleza, dándole la forma que más nos guste. Este trabajo básico de jardinería también facilita que las plantas crezcan de un modo más equilibrado, y que las flores y los frutos vuelvan cada año con regularidad. Lo mejor es dar forma cuando los ejemplares son jóvenes, de modo que exijan pocos cuidados cuando sean adultos. Además de saber cuándo y cómo hay que podar, tener unas herramientas adecuadas para esta labor es también de vital importancia.',15,14,11),
    ('21636','Pala','Herramientas','0,156',1 ,'Palas de acero con cresta de corte en la punta para cortar bien el terreno. Buena penetración en tierras muy compactas.',15,14,13),
    ('22225','Rastrillo de Jardín','Herramientas','1,064',1 ,'Fabuloso rastillo que le ayudará a eliminar piedras, hojas, ramas y otros elementos incómodos en su jardín.',15,12,11),
    ('30310','Azadón','Herramientas','0,168',1 ,'Longitud:24cm. Herramienta fabricada en acero y pintura epoxi,alargando su durabilidad y preveniendo la corrosión.Diseño pensado para el ahorro de trabajo.',15,12,11),
    ('AR-001','Ajedrea','Aromáticas','15-20',2 ,'Planta aromática que fresca se utiliza para condimentar carnes y ensaladas, y seca, para pastas, sopas y guisantes',140,1,0),
    ('AR-002','Lavándula Dentata','Aromáticas','15-20',2 ,'Espliego de jardín, Alhucema rizada, Alhucema dentada, Cantueso rizado. Familia: Lamiaceae.Origen: España y Portugal. Mata de unos 60 cm de alto. Las hojas son aromáticas, dentadas y de color verde grisáceas.  Produce compactas espigas de flores pequeñas, ligeramente aromáticas, tubulares,de color azulado y con brácteas púrpuras.  Frutos: nuececillas alargadas encerradas en el tubo del cáliz.  Se utiliza en jardineria y no en perfumeria como otros cantuesos, espliegos y lavandas.  Tiene propiedades aromatizantes y calmantes. Adecuadas para la formación de setos bajos. Se dice que su aroma ahuyenta pulgones y otros insectos perjudiciales para las plantas vecinas.',140,1,0),
    ('AR-003','Mejorana','Aromáticas','15-20',2 ,'Origanum majorana. No hay que confundirlo con el orégano. Su sabor se parece más al tomillo, pero es más dulce y aromático.Se usan las hojas frescas o secas, picadas, machacadas o en polvo, en sopas, rellenos, quiches y tartas, tortillas, platos con papas y, como aderezo, en ramilletes de hierbas.El sabor delicado de la mejorana se elimina durante la cocción, de manera que es mejor agregarla cuando el plato esté en su punto o en aquéllos que apenas necesitan cocción.',140,1,0),
    ('AR-004','Melissa ','Aromáticas','15-20',2 ,'Es una planta perenne (dura varios años) conocida por el agradable y característico olor a limón que desprenden en verano. Nunca debe faltar en la huerta o jardín por su agradable aroma y por los variados usos que tiene: planta olorosa, condimentaria y medicinal. Su cultivo es muy fácil. Le va bien un suelo ligero, con buen drenaje y riego sin exceso. A pleno sol o por lo menos 5 horas de sol por día. Cada año, su abonado mineral correspondiente.En otoño, la melisa pierde el agradable olor a limón que desprende en verano sus flores azules y blancas. En este momento se debe cortar a unos 20 cm. del suelo. Brotará de forma densa en primavera.',140,1,0),
    ('AR-005','Mentha Sativa','Aromáticas','15-20',2 ,'¿Quién no conoce la Hierbabuena? Se trata de una plantita muy aromática, agradable y cultivada extensamente por toda España. Es hierba perenne (por tanto vive varios años, no es anual). Puedes cultivarla en maceta o plantarla en la tierra del jardín o en un rincón del huerto. Lo más importante es que cuente con bastante agua. En primavera debes aportar fertilizantes minerales. Vive mejor en semisombra que a pleno sol.Si ves orugas o los agujeros en hojas consecuencia de su ataque, retíralas una a una a mano; no uses insecticidas químicos.',140,1,0),
    ('AR-006','Petrosilium Hortense (Peregil)','Aromáticas','15-20',2 ,'Nombre científico o latino: Petroselinum hortense, Petroselinum crispum. Nombre común o vulgar: Perejil, Perejil rizado Familia: Umbelliferae (Umbelíferas). Origen: el origen del perejil se encuentra en el Mediterraneo. Esta naturalizada en casi toda Europa. Se utiliza como condimento y para adorno, pero también en ensaladas. Se suele regalar en las fruterías y verdulerías.El perejil lo hay de 2 tipos: de hojas planas y de hojas rizadas.',140,1,0),
    ('AR-007','Salvia Mix','Aromáticas','15-20',2 ,'La Salvia es un pequeño arbusto que llega hasta el metro de alto.Tiene una vida breve, de unos pocos años.En el jardín, como otras aromáticas, queda muy bien en una rocalla o para hacer una bordura perfumada a cada lado de un camino de Salvia. Abona después de cada corte y recorta el arbusto una vez pase la floración.',140,1,0),
    ('AR-008','Thymus Citriodra (Tomillo limón)','Aromáticas','15-20',2 ,'Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiatae (Labiadas).Origen: Región mediterránea.Arbustillo bajo, de 15 a 40 cm de altura. Las hojas son muy pequeñas, de unos 6 mm de longitud; según la variedad pueden ser verdes, verdes grisáceas, amarillas, o jaspeadas. Las flores aparecen de mediados de primavera hasta bien entrada la época estival y se presentan en racimos terminales que habitualmente son de color violeta o púrpura aunque también pueden ser blancas. Esta planta despide un intenso y típico aroma, que se incrementa con el roce. El tomillo resulta de gran belleza cuando está en flor. El tomillo atrae a avispas y abejas. En jardinería se usa como manchas, para hacer borduras, para aromatizar el ambiente, llenar huecos, cubrir rocas, para jardines en miniatura, etc. Arranque las flores y hojas secas del tallo y añadálos a un popurri, introdúzcalos en saquitos de hierbas o en la almohada.También puede usar las ramas secas con flores para añadir aroma y textura a cestos abiertos.',140,1,0),
    ('AR-009','Thymus Vulgaris','Aromáticas','15-20',2 ,'Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiatae (Labiadas). Origen: Región mediterránea. Arbustillo bajo, de 15 a 40 cm de altura. Las hojas son muy pequeñas, de unos 6 mm de longitud; según la variedad pueden ser verdes, verdes grisáceas, amarillas, o jaspeadas. Las flores aparecen de mediados de primavera hasta bien entrada la época estival y se presentan en racimos terminales que habitualmente son de color violeta o púrpura aunque también pueden ser blancas. Esta planta despide un intenso y típico aroma, que se incrementa con el roce. El tomillo resulta de gran belleza cuando está en flor. El tomillo atrae a avispas y abejas.\r\n En jardinería se usa como manchas, para hacer borduras, para aromatizar el ambiente, llenar huecos, cubrir rocas, para jardines en miniatura, etc. Arranque las flores y hojas secas del tallo y añadálos a un popurri, introdúzcalos en saquitos de hierbas o en la almohada. También puede usar las ramas secas con flores para añadir aroma y textura a cestos abiertos.',140,1,0),
    ('AR-010','Santolina Chamaecyparys','Aromáticas','15-20',2 ,'',140,1,0),
    ('FR-1','Expositor Cítricos Mix','Frutales','100-120',3 ,'',15,7,5),
    ('FR-10','Limonero 2 años injerto','Frutales','',6 ,'El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el hombre, en este caso buscando las necesidades del mercado.',15,7,5),
    ('FR-100','Nectarina','Frutales','8/10',3 ,'Se trata de un árbol derivado por mutación de los melocotoneros comunes, y los únicos caracteres diferenciales son la ausencia de tomentosidad en la piel del fruto. La planta, si se deja crecer libremente, adopta un porte globoso con unas dimensiones medias de 4-6 metros',50,11,8),
    ('FR-101','Nogal','Frutales','8/10',3 ,'',50,13,10),
    ('FR-102','Olea-Olivos','Frutales','8/10',3 ,'Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,18,14),
    ('FR-103','Olea-Olivos','Frutales','10/12',3 ,'Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,25,20),
    ('FR-104','Olea-Olivos','Frutales','12/4',3 ,'Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,49,39),
    ('FR-105','Olea-Olivos','Frutales','14/16',3 ,'Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,70,56),
    ('FR-106','Peral','Frutales','8/10',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,11,8),
    ('FR-107','Peral','Frutales','10/12',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,22,17),
    ('FR-108','Peral','Frutales','12/14',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,32,25),
    ('FR-11','Limonero 30/40','Frutales','',6 ,'El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,100,80),
    ('FR-12','Kunquat ','Frutales','',6 ,'su nombre científico se origina en honor a un hoticultor escocés que recolectó especímenes en China, (\"Fortunella\"), Robert Fortune (1812-1880), y \"margarita\", del latín margaritus-a-um = perla, en alusión a sus pequeños y brillantes frutos. Se trata de un arbusto o árbol pequeño de 2-3 m de altura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 (-15) cm de longitud, con el ápice redondeado y la base cuneada.Tienen el margen crenulado en su mitad superior, el haz verde brillante y el envés más pálido.Pecíolo ligeramente marginado.Flores perfumadas solitarias o agrupadas en inflorescencias axilares, blancas.El fruto es lo más característico, es el más pequeño de todos los cítricos y el único cuya cáscara se puede comer.Frutos pequeños, con semillas, de corteza fina, dulce, aromática y comestible, y de pulpa naranja amarillenta y ligeramente ácida.Sus frutos son muy pequeños y tienen un carácter principalmente ornamental.',15,21,16),
    ('FR-13','Kunquat  EXTRA con FRUTA','Frutales','150-170',6 ,'su nombre científico se origina en honor a un hoticultor escocés que recolectó especímenes en China, (\"Fortunella\"), Robert Fortune (1812-1880), y \"margarita\", del latín margaritus-a-um = perla, en alusión a sus pequeños y brillantes frutos. Se trata de un arbusto o árbol pequeño de 2-3 m de altura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 (-15) cm de longitud, con el ápice redondeado y la base cuneada.Tienen el margen crenulado en su mitad superior, el haz verde brillante y el envés más pálido.Pecíolo ligeramente marginado.Flores perfumadas solitarias o agrupadas en inflorescencias axilares, blancas.El fruto es lo más característico, es el más pequeño de todos los cítricos y el único cuya cáscara se puede comer.Frutos pequeños, con semillas, de corteza fina, dulce, aromática y comestible, y de pulpa naranja amarillenta y ligeramente ácida.Sus frutos son muy pequeños y tienen un carácter principalmente ornamental.',15,57,45),
    ('FR-14','Calamondin Mini','Frutales','',3 ,'Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,10,8),
    ('FR-15','Calamondin Copa ','Frutales','',3 ,'Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,25,20),
    ('FR-16','Calamondin Copa EXTRA Con FRUTA','Frutales','100-120',3 ,'Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,45,36),
    ('FR-17','Rosal bajo 1Âª -En maceta-inicio brotación','Frutales','',3 ,'',15,2,1),
    ('FR-18','ROSAL TREPADOR','Frutales','',3 ,'',350,4,3),
    ('FR-19','Camelia Blanco, Chrysler Rojo, Soraya Naranja, ','Frutales','',6 ,'',350,4,3),
    ('FR-2','Naranjo -Plantón joven 1 año injerto','Frutales','',6 ,'El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,6,4),
    ('FR-20','Landora Amarillo, Rose Gaujard bicolor blanco-rojo','Frutales','',3 ,'',350,4,3),
    ('FR-21','Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte','Frutales','',3 ,'',350,4,3),
    ('FR-22','Pitimini rojo','Frutales','',3 ,'',350,4,3),
    ('FR-23','Rosal copa ','Frutales','',3 ,'',400,8,6),
    ('FR-24','Albaricoquero Corbato','Frutales','',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8,6),
    ('FR-25','Albaricoquero Moniqui','Frutales','',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8,6),
    ('FR-26','Albaricoquero Kurrot','Frutales','',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8,6),
    ('FR-27','Cerezo Burlat','Frutales','',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8,6),
    ('FR-28','Cerezo Picota','Frutales','',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8,6),
    ('FR-29','Cerezo Napoleón','Frutales','',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8,6),
    ('FR-3','Naranjo 2 años injerto','Frutales','',6 ,'El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,7,5),
    ('FR-30','Ciruelo R. Claudia Verde   ','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-31','Ciruelo Santa Rosa','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-32','Ciruelo Golden Japan','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-33','Ciruelo Friar','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-34','Ciruelo Reina C. De Ollins','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-35','Ciruelo Claudia Negra','Frutales','',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8,6),
    ('FR-36','Granado Mollar de Elche','Frutales','',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',400,9,7),
    ('FR-37','Higuera Napolitana','Frutales','',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9,7),
    ('FR-38','Higuera Verdal','Frutales','',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9,7),
    ('FR-39','Higuera Breva','Frutales','',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9,7),
    ('FR-4','Naranjo calibre 8/10','Frutales','',6 ,'El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,29,23),
    ('FR-40','Manzano Starking Delicious','Frutales','',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8,6),
    ('FR-41','Manzano Reineta','Frutales','',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8,6),
    ('FR-42','Manzano Golden Delicious','Frutales','',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8,6),
    ('FR-43','Membrillero Gigante de Wranja','Frutales','',3 ,'',400,8,6),
    ('FR-44','Melocotonero Spring Crest','Frutales','',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8,6),
    ('FR-45','Melocotonero Amarillo de Agosto','Frutales','',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8,6),
    ('FR-46','Melocotonero Federica','Frutales','',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8,6),
    ('FR-47','Melocotonero Paraguayo','Frutales','',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8,6),
    ('FR-48','Nogal Común','Frutales','',3 ,'',400,9,7),
    ('FR-49','Parra Uva de Mesa','Frutales','',3 ,'',400,8,6),
    ('FR-5','Mandarino -Plantón joven','Frutales','',3 ,'',15,6,4),
    ('FR-50','Peral Castell','Frutales','',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8,6),
    ('FR-51','Peral Williams','Frutales','',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8,6),
    ('FR-52','Peral Conference','Frutales','',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8,6),
    ('FR-53','Peral Blanq. de Aranjuez','Frutales','',3 ,'Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8,6),
    ('FR-54','Níspero Tanaca','Frutales','',3 ,'Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',400,9,7),
    ('FR-55','Olivo Cipresino','Frutales','',3 ,'Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',400,8,6),
    ('FR-56','Nectarina','Frutales','',3 ,'',400,8,6),
    ('FR-57','Kaki Rojo Brillante','Frutales','',6 ,'De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',400,9,7),
    ('FR-58','Albaricoquero','Frutales','8/10',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,11,8),
    ('FR-59','Albaricoquero','Frutales','10/12',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,22,17),
    ('FR-6','Mandarino 2 años injerto','Frutales','',3 ,'',15,7,5),
    ('FR-60','Albaricoquero','Frutales','12/14',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,32,25),
    ('FR-61','Albaricoquero','Frutales','14/16',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,49,39),
    ('FR-62','Albaricoquero','Frutales','16/18',4 ,'árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,70,56),
    ('FR-63','Cerezo','Frutales','8/10',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',300,11,8),
    ('FR-64','Cerezo','Frutales','10/12',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',15,22,17),
    ('FR-65','Cerezo','Frutales','12/14',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',200,32,25),
    ('FR-66','Cerezo','Frutales','14/16',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,49,39),
    ('FR-67','Cerezo','Frutales','16/18',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,70,56),
    ('FR-68','Cerezo','Frutales','18/20',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,80,64),
    ('FR-69','Cerezo','Frutales','20/25',5 ,'Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,91,72),
    ('FR-7','Mandarino calibre 8/10','Frutales','',3 ,'',15,29,23),
    ('FR-70','Ciruelo','Frutales','8/10',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,11,8),
    ('FR-71','Ciruelo','Frutales','10/12',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,22,17),
    ('FR-72','Ciruelo','Frutales','12/14',3 ,'árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,32,25),
    ('FR-73','Granado','Frutales','8/10',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,13,10),
    ('FR-74','Granado','Frutales','10/12',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,22,17),
    ('FR-75','Granado','Frutales','12/14',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,32,25),
    ('FR-76','Granado','Frutales','14/16',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,49,39),
    ('FR-77','Granado','Frutales','16/18',3 ,'pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,70,56),
    ('FR-78','Higuera','Frutales','8/10',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,15,12),
    ('FR-79','Higuera','Frutales','10/12',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,22,17),
    ('FR-8','Limonero -Plantón joven','Frutales','',6 ,'El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,6,4),
    ('FR-80','Higuera','Frutales','12/14',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,32,25),
    ('FR-81','Higuera','Frutales','14/16',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,49,39),
    ('FR-82','Higuera','Frutales','16/18',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,70,56),
    ('FR-83','Higuera','Frutales','18/20',3 ,'La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,80,64),
    ('FR-84','Kaki','Frutales','8/10',6 ,'De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',50,13,10),
    ('FR-85','Kaki','Frutales','16/18',6 ,'De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',50,70,56),
    ('FR-86','Manzano','Frutales','8/10',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,11,8),
    ('FR-87','Manzano','Frutales','10/12',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,22,17),
    ('FR-88','Manzano','Frutales','12/14',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,32,25),
    ('FR-89','Manzano','Frutales','14/16',3 ,'alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,49,39),
    ('FR-9','Limonero calibre 8/10','Frutales','',6 ,'El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,29,23),
    ('FR-90','Níspero','Frutales','16/18',3 ,'Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',50,70,56),
    ('FR-91','Níspero','Frutales','18/20',3 ,'Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',50,80,64),
    ('FR-92','Melocotonero','Frutales','8/10',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,11,8),
    ('FR-93','Melocotonero','Frutales','10/12',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,22,17),
    ('FR-94','Melocotonero','Frutales','12/14',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,32,25),
    ('FR-95','Melocotonero','Frutales','14/16',4 ,'Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,49,39),
    ('FR-96','Membrillero','Frutales','8/10',3 ,'arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,11,8),
    ('FR-97','Membrillero','Frutales','10/12',3 ,'arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,22,17),
    ('FR-98','Membrillero','Frutales','12/14',3 ,'arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,32,25),
    ('FR-99','Membrillero','Frutales','14/16',3 ,'arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,49,39),
    ('OR-001','Arbustos Mix Maceta','Ornamentales','40-60',7 ,'',25,5,4),
    ('OR-100','Mimosa Injerto CLASICA Dealbata ','Ornamentales','100-110',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,12,9),
    ('OR-101','Expositor Mimosa Semilla Mix','Ornamentales','170-200',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6,4),
    ('OR-102','Mimosa Semilla Bayleyana  ','Ornamentales','170-200',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6,4),
    ('OR-103','Mimosa Semilla Bayleyana   ','Ornamentales','200-225',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10,8),
    ('OR-104','Mimosa Semilla Cyanophylla    ','Ornamentales','200-225',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10,8),
    ('OR-105','Mimosa Semilla Espectabilis  ','Ornamentales','160-170',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6,4),
    ('OR-106','Mimosa Semilla Longifolia   ','Ornamentales','200-225',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10,8),
    ('OR-107','Mimosa Semilla Floribunda 4 estaciones','Ornamentales','120-140',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6,4),
    ('OR-108','Abelia Floribunda','Ornamentales','35-45',8 ,'',100,5,4),
    ('OR-109','Callistemom (Mix)','Ornamentales','35-45',8 ,'Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',100,5,4),
    ('OR-110','Callistemom (Mix)','Ornamentales','40-60',8 ,'Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',100,2,1),
    ('OR-111','Corylus Avellana \"Contorta\"','Ornamentales','35-45',8 ,'',100,5,4),
    ('OR-112','Escallonia (Mix)','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-113','Evonimus Emerald Gayeti','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-114','Evonimus Pulchellus','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-115','Forsytia Intermedia \"Lynwood\"','Ornamentales','35-45',8 ,'',120,7,5),
    ('OR-116','Hibiscus Syriacus  \"Diana\" -Blanco Puro','Ornamentales','35-45',8 ,'Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7,5),
    ('OR-117','Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo','Ornamentales','35-45',8 ,'Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7,5),
    ('OR-118','Hibiscus Syriacus \"Pink Giant\" Rosa','Ornamentales','35-45',8 ,'Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7,5),
    ('OR-119','Laurus Nobilis Arbusto - Ramificado Bajo','Ornamentales','40-50',8 ,'',120,5,4),
    ('OR-120','Lonicera Nitida ','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-121','Lonicera Nitida \"Maigrum\"','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-122','Lonicera Pileata','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-123','Philadelphus \"Virginal\"','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-124','Prunus pisardii  ','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-125','Viburnum Tinus \"Eve Price\"','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-126','Weigelia \"Bristol Ruby\"','Ornamentales','35-45',8 ,'',120,5,4),
    ('OR-127','Camelia japonica','Ornamentales','40-60',8 ,'Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,7,5),
    ('OR-128','Camelia japonica ejemplar','Ornamentales','200-250',8 ,'Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,98,78),
    ('OR-129','Camelia japonica ejemplar','Ornamentales','250-300',8 ,'Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,110,88),
    ('OR-130','Callistemom COPA','Ornamentales','110/120',8 ,'Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',50,18,14),
    ('OR-131','Leptospermum formado PIRAMIDE','Ornamentales','80-100',8 ,'',50,18,14),
    ('OR-132','Leptospermum COPA','Ornamentales','110/120',8 ,'',50,18,14),
    ('OR-133','Nerium oleander-CALIDAD \"GARDEN\"','Ornamentales','40-45',8 ,'',50,2,1),
    ('OR-134','Nerium Oleander Arbusto GRANDE','Ornamentales','160-200',8 ,'',100,38,30),
    ('OR-135','Nerium oleander COPA  Calibre 6/8','Ornamentales','50-60',8 ,'',100,5,4),
    ('OR-136','Nerium oleander ARBOL Calibre 8/10','Ornamentales','225-250',8 ,'',100,18,14),
    ('OR-137','ROSAL TREPADOR','Ornamentales','',8 ,'',100,4,3),
    ('OR-138','Camelia Blanco, Chrysler Rojo, Soraya Naranja, ','Ornamentales','',8 ,'',100,4,3),
    ('OR-139','Landora Amarillo, Rose Gaujard bicolor blanco-rojo','Ornamentales','',8 ,'',100,4,3),
    ('OR-140','Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte','Ornamentales','',8 ,'',100,4,3),
    ('OR-141','Pitimini rojo','Ornamentales','',8 ,'',100,4,3),
    ('OR-142','Solanum Jazminoide','Ornamentales','150-160',8 ,'',100,2,1),
    ('OR-143','Wisteria Sinensis  azul, rosa, blanca','Ornamentales','',8 ,'',100,9,7),
    ('OR-144','Wisteria Sinensis INJERTADAS DECÃ“','Ornamentales','140-150',8 ,'',100,12,9),
    ('OR-145','Bougamvillea Sanderiana Tutor','Ornamentales','80-100',8 ,'',100,2,1),
    ('OR-146','Bougamvillea Sanderiana Tutor','Ornamentales','125-150',8 ,'',100,4,3),
    ('OR-147','Bougamvillea Sanderiana Tutor','Ornamentales','180-200',8 ,'',100,7,5),
    ('OR-148','Bougamvillea Sanderiana Espaldera','Ornamentales','45-50',8 ,'',100,7,5),
    ('OR-149','Bougamvillea Sanderiana Espaldera','Ornamentales','140-150',8 ,'',100,17,13),
    ('OR-150','Bougamvillea roja, naranja','Ornamentales','110-130',8 ,'',100,2,1),
    ('OR-151','Bougamvillea Sanderiana, 3 tut. piramide','Ornamentales','',8 ,'',100,6,4),
    ('OR-152','Expositor Árboles clima continental','Ornamentales','170-200',8 ,'',100,6,4),
    ('OR-153','Expositor Árboles clima mediterráneo','Ornamentales','170-200',8 ,'',100,6,4),
    ('OR-154','Expositor Árboles borde del mar','Ornamentales','170-200',8 ,'',100,6,4),
    ('OR-155','Acer Negundo  ','Ornamentales','200-225',8 ,'',100,6,4),
    ('OR-156','Acer platanoides  ','Ornamentales','200-225',8 ,'',100,10,8),
    ('OR-157','Acer Pseudoplatanus ','Ornamentales','200-225',8 ,'',100,10,8),
    ('OR-158','Brachychiton Acerifolius  ','Ornamentales','200-225',8 ,'',100,6,4),
    ('OR-159','Brachychiton Discolor  ','Ornamentales','200-225',8 ,'',100,6,4),
    ('OR-160','Brachychiton Rupestris','Ornamentales','170-200',8 ,'',100,10,8),
    ('OR-161','Cassia Corimbosa  ','Ornamentales','200-225',8 ,'',100,6,4),
    ('OR-162','Cassia Corimbosa ','Ornamentales','200-225',8 ,'',100,10,8),
    ('OR-163','Chitalpa Summer Bells   ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-164','Erytrina Kafra','Ornamentales','170-180',8 ,'',80,6,4),
    ('OR-165','Erytrina Kafra','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-166','Eucalyptus Citriodora  ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-167','Eucalyptus Ficifolia  ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-168','Eucalyptus Ficifolia   ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-169','Hibiscus Syriacus  Var. Injertadas 1 Tallo ','Ornamentales','170-200',8 ,'',80,12,9),
    ('OR-170','Lagunaria Patersonii  ','Ornamentales','140-150',8 ,'',80,6,4),
    ('OR-171','Lagunaria Patersonii   ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-172','Lagunaria patersonii  calibre 8/10','Ornamentales','200-225',8 ,'',80,18,14),
    ('OR-173','Morus Alba  ','Ornamentales','200-225',8 ,'',80,6,4),
    ('OR-174','Morus Alba  calibre 8/10','Ornamentales','200-225',8 ,'',80,18,14),
    ('OR-175','Platanus Acerifolia   ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-176','Prunus pisardii  ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-177','Robinia Pseudoacacia Casque Rouge   ','Ornamentales','200-225',8 ,'',80,15,12),
    ('OR-178','Salix Babylonica  Pendula  ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-179','Sesbania Punicea   ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-180','Tamarix  Ramosissima Pink Cascade   ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-181','Tamarix  Ramosissima Pink Cascade   ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-182','Tecoma Stands   ','Ornamentales','200-225',8 ,'',80,6,4),
    ('OR-183','Tecoma Stands  ','Ornamentales','200-225',8 ,'',80,10,8),
    ('OR-184','Tipuana Tipu  ','Ornamentales','170-200',8 ,'',80,6,4),
    ('OR-185','Pleioblastus distichus-Bambú enano','Ornamentales','15-20',8 ,'',80,6,4),
    ('OR-186','Sasa palmata ','Ornamentales','20-30',8 ,'',80,6,4),
    ('OR-187','Sasa palmata ','Ornamentales','40-45',8 ,'',80,10,8),
    ('OR-188','Sasa palmata ','Ornamentales','50-60',8 ,'',80,25,20),
    ('OR-189','Phylostachys aurea','Ornamentales','180-200',8 ,'',80,22,17),
    ('OR-190','Phylostachys aurea','Ornamentales','250-300',8 ,'',80,32,25),
    ('OR-191','Phylostachys Bambusa Spectabilis','Ornamentales','180-200',8 ,'',80,24,19),
    ('OR-192','Phylostachys biseti','Ornamentales','160-170',8 ,'',80,22,17),
    ('OR-193','Phylostachys biseti','Ornamentales','160-180',8 ,'',80,20,16),
    ('OR-194','Pseudosasa japonica (Metake)','Ornamentales','225-250',8 ,'',80,20,16),
    ('OR-195','Pseudosasa japonica (Metake) ','Ornamentales','30-40',8 ,'',80,6,4),
    ('OR-196','Cedrus Deodara ','Ornamentales','80-100',8 ,'',80,10,8),
    ('OR-197','Cedrus Deodara \"Feeling Blue\" Novedad','Ornamentales','rastrero',8 ,'',80,12,9),
    ('OR-198','Juniperus chinensis \"Blue Alps\"','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-199','Juniperus Chinensis Stricta','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-200','Juniperus horizontalis Wiltonii','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-201','Juniperus squamata \"Blue Star\"','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-202','Juniperus x media Phitzeriana verde','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-203','Pinus Canariensis','Ornamentales','80-100',8 ,'',80,10,8),
    ('OR-204','Pinus Halepensis','Ornamentales','160-180',8 ,'',80,10,8),
    ('OR-205','Pinus Pinea -Pino Piñonero','Ornamentales','70-80',8 ,'',80,10,8),
    ('OR-206','Thuja Esmeralda ','Ornamentales','80-100',8 ,'',80,5,4),
    ('OR-207','Tuja Occidentalis Woodwardii','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-208','Tuja orientalis \"Aurea nana\"','Ornamentales','20-30',8 ,'',80,4,3),
    ('OR-209','Archontophoenix Cunninghamiana','Ornamentales','80 - 100',8 ,'',80,10,8),
    ('OR-210','Beucarnea Recurvata','Ornamentales','130  - 150',8 ,'',2,39,31),
    ('OR-211','Beucarnea Recurvata','Ornamentales','180 - 200',8 ,'',5,59,47),
    ('OR-212','Bismarckia Nobilis','Ornamentales','200 - 220',8 ,'',4,217,173),
    ('OR-213','Bismarckia Nobilis','Ornamentales','240 - 260',8 ,'',4,266,212),
    ('OR-214','Brahea Armata','Ornamentales','45 - 60',8 ,'',0,10,8),
    ('OR-215','Brahea Armata','Ornamentales','120 - 140',8 ,'',100,112,89),
    ('OR-216','Brahea Edulis','Ornamentales','80 - 100',8 ,'',100,19,15),
    ('OR-217','Brahea Edulis','Ornamentales','140 - 160',8 ,'',100,64,51),
    ('OR-218','Butia Capitata','Ornamentales','70 - 90',8 ,'',100,25,20),
    ('OR-219','Butia Capitata','Ornamentales','90 - 110',8 ,'',100,29,23),
    ('OR-220','Butia Capitata','Ornamentales','90 - 120',8 ,'',100,36,28),
    ('OR-221','Butia Capitata','Ornamentales','85 - 105',8 ,'',100,59,47),
    ('OR-222','Butia Capitata','Ornamentales','130 - 150',8 ,'',100,87,69),
    ('OR-223','Chamaerops Humilis','Ornamentales','40 - 45',8 ,'',100,4,3),
    ('OR-224','Chamaerops Humilis','Ornamentales','50 - 60',8 ,'',100,7,5),
    ('OR-225','Chamaerops Humilis','Ornamentales','70 - 90',8 ,'',100,10,8),
    ('OR-226','Chamaerops Humilis','Ornamentales','115 - 130',8 ,'',100,38,30),
    ('OR-227','Chamaerops Humilis','Ornamentales','130 - 150',8 ,'',100,64,51),
    ('OR-228','Chamaerops Humilis \"Cerifera\"','Ornamentales','70 - 80',8 ,'',100,32,25),
    ('OR-229','Chrysalidocarpus Lutescens -ARECA','Ornamentales','130 - 150',8 ,'',100,22,17),
    ('OR-230','Cordyline Australis -DRACAENA','Ornamentales','190 - 210',8 ,'',100,38,30),
    ('OR-231','Cycas Revoluta','Ornamentales','55 - 65',8 ,'',100,15,12),
    ('OR-232','Cycas Revoluta','Ornamentales','80 - 90',8 ,'',100,34,27),
    ('OR-233','Dracaena Drago','Ornamentales','60 - 70',8 ,'',1,13,10),
    ('OR-234','Dracaena Drago','Ornamentales','130 - 150',8 ,'',2,64,51),
    ('OR-235','Dracaena Drago','Ornamentales','150 - 175',8 ,'',2,92,73),
    ('OR-236','Jubaea Chilensis','Ornamentales','',8 ,'',100,49,39),
    ('OR-237','Livistonia Australis','Ornamentales','100 - 125',8 ,'',50,19,15),
    ('OR-238','Livistonia Decipiens','Ornamentales','90 - 110',8 ,'',50,19,15),
    ('OR-239','Livistonia Decipiens','Ornamentales','180 - 200',8 ,'',50,49,39),
    ('OR-240','Phoenix Canariensis','Ornamentales','110 - 130',8 ,'',50,6,4),
    ('OR-241','Phoenix Canariensis','Ornamentales','180 - 200',8 ,'',50,19,15),
    ('OR-242','Rhaphis Excelsa','Ornamentales','80 - 100',8 ,'',50,21,16),
    ('OR-243','Rhaphis Humilis','Ornamentales','150- 170',8 ,'',50,64,51),
    ('OR-244','Sabal Minor','Ornamentales','60 - 75',8 ,'',50,11,8),
    ('OR-245','Sabal Minor','Ornamentales','120 - 140',8 ,'',50,34,27),
    ('OR-246','Trachycarpus Fortunei','Ornamentales','90 - 105',8 ,'',50,18,14),
    ('OR-247','Trachycarpus Fortunei','Ornamentales','250-300',8 ,'',2,462,369),
    ('OR-248','Washingtonia Robusta','Ornamentales','60 - 70',8 ,'',15,3,2),
    ('OR-249','Washingtonia Robusta','Ornamentales','130 - 150',8 ,'',15,5,4),
    ('OR-250','Yucca Jewel','Ornamentales','80 - 105',8 ,'',15,10,8),
    ('OR-251','Zamia Furfuracaea','Ornamentales','90 - 110',8 ,'',15,168,134),
    ('OR-99','Mimosa DEALBATA Gaulois Astier  ','Ornamentales','200-225',8 ,'Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,14,11);


+---------------+---------------+------+-----+---------+-------+
| detalle_pedido                                               |
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| id_pedido     | int           | NO   | PRI | NULL    |       |
| id_producto   | varchar(15)   | NO   | PRI | NULL    |       |
| cantidad      | int           | YES  |     | NULL    |       |
| precio_unidad | decimal(15,2) | YES  |     | NULL    |       |
| numero_linea  | smallint      | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
CREATE TABLE detalle_pedido (
    id_pedido INT(11),
    id_producto VARCHAR(15),
    cantidad INT(11),
    precio_unidad DECIMAL(15,2),
    numero_linea SMALLINT(6),
    PRIMARY KEY (id_pedido, id_producto),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

INSERT INTO detalle_pedido VALUES 
    (1,'FR-67',10,70,3),
    (1,'OR-127',40,4,1),
    (1,'OR-141',25,4,2),
    (1,'OR-241',15,19,4),
    (1,'OR-99',23,14,5),
    (2,'FR-4',3,29,6),
    (2,'FR-40',7,8,7),
    (2,'OR-140',50,4,3),
    (2,'OR-141',20,5,2),
    (2,'OR-159',12,6,5),
    (2,'OR-227',67,64,1),
    (2,'OR-247',5,462,4),
    (3,'FR-48',120,9,6),
    (3,'OR-122',32,5,4),
    (3,'OR-123',11,5,5),
    (3,'OR-213',30,266,1),
    (3,'OR-217',15,65,2),
    (3,'OR-218',24,25,3),
    (4,'FR-31',12,8,7),
    (4,'FR-34',42,8,6),
    (4,'FR-40',42,9,8),
    (4,'OR-152',3,6,5),
    (4,'OR-155',4,6,3),
    (4,'OR-156',17,9,4),
    (4,'OR-157',38,10,2),
    (4,'OR-222',21,59,1),
    (8,'FR-106',3,11,1),
    (8,'FR-108',1,32,2),
    (8,'FR-11',10,100,3),
    (9,'AR-001',80,1,3),
    (9,'AR-008',450,1,2),
    (9,'FR-106',80,8,1),
    (9,'FR-69',15,91,2),
    (10,'FR-82',5,70,2),
    (10,'FR-91',30,75,1),
    (10,'OR-234',5,64,3),
    (11,'AR-006',180,1,3),
    (11,'OR-247',80,8,1),
    (12,'AR-009',290,1,1),
    (13,'11679',5,14,1),
    (13,'21636',12,14,2),
    (13,'FR-11',5,100,3),
    (14,'FR-100',8,11,2),
    (14,'FR-13',13,57,1),
    (15,'FR-84',4,13,3),
    (15,'OR-101',2,6,2),
    (15,'OR-156',6,10,1),
    (15,'OR-203',9,10,4),
    (16,'30310',12,12,1),
    (16,'FR-36',10,9,2),
    (17,'11679',5,14,1),
    (17,'22225',5,12,3),
    (17,'FR-37',5,9,2),
    (17,'FR-64',5,22,4),
    (17,'OR-136',5,18,5),
    (18,'22225',4,12,2),
    (18,'FR-22',2,4,1),
    (18,'OR-159',10,6,3),
    (19,'30310',9,12,5),
    (19,'FR-23',6,8,4),
    (19,'FR-75',1,32,2),
    (19,'FR-84',5,13,1),
    (19,'OR-208',20,4,3),
    (20,'11679',14,14,1),
    (20,'30310',8,12,2),
    (21,'21636',5,14,3),
    (21,'FR-18',22,4,1),
    (21,'FR-53',3,8,2),
    (22,'OR-240',1,6,1),
    (23,'AR-002',110,1,4),
    (23,'FR-107',50,22,3),
    (23,'FR-85',4,70,2),
    (23,'OR-249',30,5,1),
    (24,'22225',3,15,1),
    (24,'FR-1',4,7,4),
    (24,'FR-23',2,7,2),
    (24,'OR-241',10,20,3),
    (25,'FR-77',15,69,1),
    (25,'FR-9',4,30,3),
    (25,'FR-94',10,30,2),
    (26,'FR-15',9,25,3),
    (26,'OR-188',4,25,1),
    (26,'OR-218',14,25,2),
    (27,'OR-101',22,6,2),
    (27,'OR-102',22,6,3),
    (27,'OR-186',40,6,1),
    (28,'FR-11',8,99,3),
    (28,'OR-213',3,266,2),
    (28,'OR-247',1,462,1),
    (29,'FR-82',4,70,4),
    (29,'FR-9',4,28,1),
    (29,'FR-94',20,31,5),
    (29,'OR-129',2,111,2),
    (29,'OR-160',10,9,3),
    (30,'AR-004',10,1,6),
    (30,'FR-108',2,32,2),
    (30,'FR-12',2,19,3),
    (30,'FR-72',4,31,5),
    (30,'FR-89',10,45,1),
    (30,'OR-120',5,5,4),
    (31,'AR-009',25,2,3),
    (31,'FR-102',1,20,1),
    (31,'FR-4',6,29,2),
    (32,'11679',1,14,4),
    (32,'21636',4,15,5),
    (32,'22225',1,15,3),
    (32,'OR-128',29,100,2),
    (32,'OR-193',5,20,1),
    (33,'FR-17',423,2,4),
    (33,'FR-29',120,8,3),
    (33,'OR-214',212,10,2),
    (33,'OR-247',150,462,1),
    (34,'FR-3',56,7,4),
    (34,'FR-7',12,29,3),
    (34,'OR-172',20,18,1),
    (34,'OR-174',24,18,2),
    (35,'21636',12,14,4),
    (35,'FR-47',55,8,3),
    (35,'OR-165',3,10,2),
    (35,'OR-181',36,10,1),
    (35,'OR-225',72,10,5),
    (36,'30310',4,12,2),
    (36,'FR-1',2,7,3),
    (36,'OR-147',6,7,4),
    (36,'OR-203',1,12,5),
    (36,'OR-99',15,13,1),
    (37,'FR-105',4,70,1),
    (37,'FR-57',203,8,2),
    (37,'OR-176',38,10,3),
    (38,'11679',5,14,1),
    (38,'21636',2,14,2),
    (39,'22225',3,12,1),
    (39,'30310',6,12,2),
    (40,'AR-001',4,1,1),
    (40,'AR-002',8,1,2),
    (41,'AR-003',5,1,1),
    (41,'AR-004',5,1,2),
    (42,'AR-005',3,1,1),
    (42,'AR-006',1,1,2),
    (43,'AR-007',9,1,1),
    (44,'AR-008',5,1,1),
    (45,'AR-009',6,1,1),
    (45,'AR-010',4,1,2),
    (46,'FR-1',4,7,1),
    (46,'FR-10',8,7,2),
    (47,'FR-100',9,11,1),
    (47,'FR-101',5,13,2),
    (48,'FR-102',1,18,1),
    (48,'FR-103',1,25,2),
    (48,'OR-234',50,64,1),
    (48,'OR-236',45,49,2),
    (48,'OR-237',50,19,3),
    (49,'OR-204',50,10,1),
    (49,'OR-205',10,10,2),
    (49,'OR-206',5,5,3),
    (50,'OR-225',12,10,1),
    (50,'OR-226',15,38,2),
    (50,'OR-227',44,64,3),
    (51,'OR-209',50,10,1),
    (51,'OR-210',80,39,2),
    (51,'OR-211',70,59,3),
    (53,'FR-2',1,7,1),
    (53,'FR-85',1,70,3),
    (53,'FR-86',2,11,2),
    (53,'OR-116',6,7,4),
    (54,'11679',3,14,3),
    (54,'FR-100',45,10,2),
    (54,'FR-18',5,4,1),
    (54,'FR-79',3,22,4),
    (54,'OR-116',8,7,6),
    (54,'OR-123',3,5,5),
    (54,'OR-168',2,10,7),
    (55,'OR-115',9,7,1),
    (55,'OR-213',2,266,2),
    (55,'OR-227',6,64,5),
    (55,'OR-243',2,64,4),
    (55,'OR-247',1,462,3),
    (56,'OR-129',1,115,5),
    (56,'OR-130',10,18,6),
    (56,'OR-179',1,6,3),
    (56,'OR-196',3,10,4),
    (56,'OR-207',4,4,2),
    (56,'OR-250',3,10,1),
    (57,'FR-69',6,91,4),
    (57,'FR-81',3,49,3),
    (57,'FR-84',2,13,1),
    (57,'FR-94',6,9,2),
    (58,'OR-102',65,18,3),
    (58,'OR-139',80,4,1),
    (58,'OR-172',69,15,2),
    (58,'OR-177',150,15,4),
    (74,'FR-67',15,70,1),
    (74,'OR-227',34,64,2),
    (74,'OR-247',42,8,3),
    (75,'AR-006',60,1,2),
    (75,'FR-87',24,22,3),
    (75,'OR-157',46,10,1),
    (76,'AR-009',250,1,5),
    (76,'FR-79',40,22,3),
    (76,'FR-87',24,22,4),
    (76,'FR-94',35,9,1),
    (76,'OR-196',25,10,2),
    (77,'22225',34,12,2),
    (77,'30310',15,12,1),
    (78,'FR-53',25,8,2),
    (78,'FR-85',56,70,3),
    (78,'OR-157',42,10,4),
    (78,'OR-208',30,4,1),
    (79,'OR-240',50,6,1),
    (80,'FR-11',40,100,3),
    (80,'FR-36',47,9,2),
    (80,'OR-136',75,18,1),
    (81,'OR-208',30,4,1),
    (82,'OR-227',34,64,1),
    (83,'OR-208',30,4,1),
    (89,'FR-108',3,32,2),
    (89,'FR-3',15,7,6),
    (89,'FR-42',12,8,4),
    (89,'FR-66',5,49,1),
    (89,'FR-87',4,22,3),
    (89,'OR-157',8,10,5),
    (90,'AR-001',19,1,1),
    (90,'AR-002',10,1,2),
    (90,'AR-003',12,1,3),
    (91,'FR-100',52,11,1),
    (91,'FR-101',14,13,2),
    (91,'FR-102',35,18,3),
    (92,'FR-108',12,23,1),
    (92,'FR-11',20,100,2),
    (92,'FR-12',30,21,3),
    (93,'FR-54',25,9,1),
    (93,'FR-58',51,11,2),
    (93,'FR-60',3,32,3),
    (94,'11679',12,14,1),
    (94,'FR-11',33,100,3),
    (94,'FR-4',79,29,2),
    (95,'FR-10',9,7,2),
    (95,'FR-75',6,32,1),
    (95,'FR-82',5,70,3),
    (96,'FR-43',6,8,1),
    (96,'FR-6',16,7,4),
    (96,'FR-71',10,22,3),
    (96,'FR-90',4,70,2),
    (97,'FR-41',12,8,1),
    (97,'FR-54',14,9,2),
    (97,'OR-156',10,10,3),
    (98,'FR-33',14,8,4),
    (98,'FR-56',16,8,3),
    (98,'FR-60',8,32,1),
    (98,'FR-8',18,6,5),
    (98,'FR-85',6,70,2),
    (99,'OR-157',15,10,2),
    (99,'OR-227',30,64,1),
    (100,'FR-87',20,22,1),
    (100,'FR-94',40,9,2),
    (101,'AR-006',50,1,1),
    (101,'AR-009',159,1,2),
    (102,'22225',32,12,2),
    (102,'30310',23,12,1),
    (103,'FR-53',12,8,2),
    (103,'OR-208',52,4,1),
    (104,'FR-85',9,70,1),
    (104,'OR-157',113,10,2),
    (105,'OR-227',21,64,2),
    (105,'OR-240',27,6,1),
    (106,'AR-009',231,1,1),
    (106,'OR-136',47,18,2),
    (107,'30310',143,12,2),
    (107,'FR-11',15,100,1),
    (108,'FR-53',53,8,1),
    (108,'OR-208',59,4,2),
    (109,'FR-22',8,4,5),
    (109,'FR-36',12,9,3),
    (109,'FR-45',14,8,4),
    (109,'OR-104',20,10,1),
    (109,'OR-119',10,5,2),
    (109,'OR-125',3,5,6),
    (109,'OR-130',2,18,7),
    (110,'AR-010',6,1,3),
    (110,'FR-1',14,7,1),
    (110,'FR-16',1,45,2),
    (116,'21636',5,14,1),
    (116,'AR-001',32,1,2),
    (116,'AR-005',18,1,5),
    (116,'FR-33',13,8,3),
    (116,'OR-200',10,4,4),
    (117,'FR-78',2,15,1),
    (117,'FR-80',1,32,3),
    (117,'OR-146',17,4,2),
    (117,'OR-179',4,6,4),
    (128,'AR-004',15,1,1),
    (128,'OR-150',18,2,2),
    (52,'FR-67',10,70,1),
    (59,'FR-67',10,70,1),
    (60,'FR-67',10,70,1),
    (61,'FR-67',10,70,1),
    (62,'FR-67',10,70,1),
    (63,'FR-67',10,70,1),
    (64,'FR-67',10,70,1),
    (65,'FR-67',10,70,1),
    (66,'FR-67',10,70,1),
    (67,'FR-67',10,70,1),
    (68,'FR-67',10,70,1),
    (111,'FR-67',10,70,1),
    (112,'FR-67',10,70,1),
    (113,'FR-67',10,70,1),
    (114,'FR-67',10,70,1),
    (115,'FR-67',10,70,1),
    (118,'FR-67',10,70,1),
    (119,'FR-67',10,70,1),
    (120,'FR-67',10,70,1),
    (121,'FR-67',10,70,1),
    (122,'FR-67',10,70,1),
    (123,'FR-67',10,70,1),
    (124,'FR-67',10,70,1),
    (125,'FR-67',10,70,1),
    (126,'FR-67',10,70,1),
    (127,'FR-67',10,70,1);


+----------------+-------------+------+-----+---------+-------+
| pedido                                                      |
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id_pedido      | int         | NO   | PRI | NULL    |       |
| fecha_pedido   | date        | YES  |     | NULL    |       |
| fecha_esperada | date        | YES  |     | NULL    |       |
| fecha_entrega  | date        | YES  |     | NULL    |       |
| estado         | varchar(15) | YES  |     | NULL    |       |
| comentarios    | text        | YES  |     | NULL    |       |
| id_cliente     | int         | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
CREATE TABLE pedido (
    id_pedido INT(11),
    fecha_pedido DATE,
    fecha_esperada DATE,
    fecha_entrega DATE,
    estado VARCHAR(15),
    comentarios TEXT,
    id_cliente INT(11),
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);



+------------------------+---------------+------+-----+---------+-------+
| cliente                                                               |
+------------------------+---------------+------+-----+---------+-------+
| Field                  | Type          | Null | Key | Default | Extra |
+------------------------+---------------+------+-----+---------+-------+
| id_cliente             | int           | NO   | PRI | NULL    |       |
| nombre_cliente         | varchar(50)   | YES  |     | NULL    |       |
| nombre_contacto        | varchar(30)   | YES  |     | NULL    |       |
| apellido_contacto      | varchar(30)   | YES  |     | NULL    |       |
| telefono               | varchar(15)   | YES  |     | NULL    |       |
| fax                    | varchar(15)   | YES  |     | NULL    |       |
| id_direccion           | int           | YES  | MUL | NULL    |       |
| id_ciudad              | int           | YES  | MUL | NULL    |       |
| id_empleado_rep_ventas | int           | YES  | MUL | NULL    |       |
| limite_credito         | decimal(15,2) | YES  |     | NULL    |       |
+------------------------+---------------+------+-----+---------+-------+
CREATE TABLE cliente (
    id_cliente INT(11),
    nombre_cliente VARCHAR(50),
    nombre_contacto VARCHAR(30),
    apellido_contacto VARCHAR(30),
    telefono VARCHAR(15),
    fax VARCHAR(15),
    id_direccion INT(5),
    id_ciudad INT(5),
    id_empleado_rep_ventas INT(11),
    limite_credito DECIMAL(15,2),
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
    FOREIGN KEY (id_empleado_rep_ventas) REFERENCES empleado(id_empleado)
);



+------------------+---------------+------+-----+---------+-------+
| pago                                                            |
+------------------+---------------+------+-----+---------+-------+
| Field            | Type          | Null | Key | Default | Extra |
+------------------+---------------+------+-----+---------+-------+
| id_transaccion   | varchar(50)   | NO   | PRI | NULL    |       |
| id_cliente       | int           | YES  | MUL | NULL    |       |
| id_forma_de_pago | int           | YES  | MUL | NULL    |       |
| fecha_pago       | date          | YES  |     | NULL    |       |
| total            | decimal(15,2) | YES  |     | NULL    |       |
+------------------+---------------+------+-----+---------+-------+
CREATE TABLE pago (
    id_transaccion VARCHAR(50),
    id_cliente INT(11),
    id_forma_pago INT(5),
    fecha_pago DATE,
    total DECIMAL(15,2),
    PRIMARY KEY (id_transaccion),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_forma_pago) REFERENCES forma_de_pago(id_forma_de_pago)
);



+----------------------+-------------+------+-----+---------+-------+
| forma_de_pago                                                     |
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_forma_de_pago     | int         | NO   | PRI | NULL    |       |
| nombre_forma_de_pago | varchar(50) | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
CREATE TABLE forma_de_pago (
    id_forma_de_pago INT(5),
    nombre_forma_de_pago VARCHAR(50),
    PRIMARY KEY (id_forma_de_pago)
);



+-------------+--------------+------+-----+---------+-------+
| empleado                                                  |
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| id_empleado | int          | NO   | PRI | NULL    |       |
| nombre      | varchar(50)  | YES  |     | NULL    |       |
| apellido1   | varchar(50)  | YES  |     | NULL    |       |
| apellido2   | varchar(50)  | YES  |     | NULL    |       |
| extension   | varchar(10)  | YES  |     | NULL    |       |
| email       | varchar(100) | YES  |     | NULL    |       |
| id_oficina  | varchar(10)  | YES  | MUL | NULL    |       |
| id_jefe     | int          | YES  | MUL | NULL    |       |
| puesto      | varchar(50)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
CREATE TABLE empleado (
    id_empleado INT(11),
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    extension VARCHAR(10),
    email VARCHAR(100),
    id_oficina VARCHAR(10),
    id_jefe INT(11),
    puesto VARCHAR(50),
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_oficina) REFERENCES oficina(id_oficina),
    FOREIGN KEY (id_jefe) REFERENCES empleado(id_empleado)
);

INSERT INTO empleado VALUES 
    (1,'Marcos','Magaña','Perez','3897','marcos@jardineria.es','TAL-ES',NULL,'Director General'),
    (2,'Ruben','López','Martinez','2899','rlopez@jardineria.es','TAL-ES',1,'Subdirector Marketing'),
    (3,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es','TAL-ES',2,'Subdirector Ventas'),
    (4,'Maria','Solís','Jerez','2847','msolis@jardineria.es','TAL-ES',2,'Secretaria'),
    (5,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es','TAL-ES',3,'Representante Ventas'),
    (6,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es','TAL-ES',3,'Representante Ventas'),
    (7,'Carlos','Soria','Jimenez','2444','csoria@jardineria.es','MAD-ES',3,'Director Oficina'),
    (8,'Mariano','López','Murcia','2442','mlopez@jardineria.es','MAD-ES',7,'Representante Ventas'),
    (9,'Lucio','Campoamor','Martín','2442','lcampoamor@jardineria.es','MAD-ES',7,'Representante Ventas'),
    (10,'Hilario','Rodriguez','Huertas','2444','hrodriguez@jardineria.es','MAD-ES',7,'Representante Ventas'),
    (11,'Emmanuel','Magaña','Perez','2518','manu@jardineria.es','BCN-ES',3,'Director Oficina'),
    (12,'José Manuel','Martinez','De la Osa','2519','jmmart@hotmail.es','BCN-ES',11,'Representante Ventas'),
    (13,'David','Palma','Aceituno','2519','dpalma@jardineria.es','BCN-ES',11,'Representante Ventas'),
    (14,'Oscar','Palma','Aceituno','2519','opalma@jardineria.es','BCN-ES',11,'Representante Ventas'),
    (15,'Francois','Fignon','','9981','ffignon@gardening.com','PAR-FR',3,'Director Oficina'),
    (16,'Lionel','Narvaez','','9982','lnarvaez@gardening.com','PAR-FR',15,'Representante Ventas'),
    (17,'Laurent','Serra','','9982','lserra@gardening.com','PAR-FR',15,'Representante Ventas'),
    (18,'Michael','Bolton','','7454','mbolton@gardening.com','SFC-USA',3,'Director Oficina'),
    (19,'Walter Santiago','Sanchez','Lopez','7454','wssanchez@gardening.com','SFC-USA',18,'Representante Ventas'),
    (20,'Hilary','Washington','','7565','hwashington@gardening.com','BOS-USA',3,'Director Oficina'),
    (21,'Marcus','Paxton','','7565','mpaxton@gardening.com','BOS-USA',20,'Representante Ventas'),
    (22,'Lorena','Paxton','','7665','lpaxton@gardening.com','BOS-USA',20,'Representante Ventas'),
    (23,'Nei','Nishikori','','8734','nnishikori@gardening.com','TOK-JP',3,'Director Oficina'),
    (24,'Narumi','Riko','','8734','nriko@gardening.com','TOK-JP',23,'Representante Ventas'),
    (25,'Takuma','Nomura','','8735','tnomura@gardening.com','TOK-JP',23,'Representante Ventas'),
    (26,'Amy','Johnson','','3321','ajohnson@gardening.com','LON-UK',3,'Director Oficina'),
    (27,'Larry','Westfalls','','3322','lwestfalls@gardening.com','LON-UK',26,'Representante Ventas'),
    (28,'John','Walton','','3322','jwalton@gardening.com','LON-UK',26,'Representante Ventas'),
    (29,'Kevin','Fallmer','','3210','kfalmer@gardening.com','SYD-AU',3,'Director Oficina'),
    (30,'Julian','Bellinelli','','3211','jbellinelli@gardening.com','SYD-AU',29,'Representante Ventas'),
    (31,'Mariko','Kishi','','3211','mkishi@gardening.com','SYD-AU',29,'Representante Ventas');

+--------------+-------------+------+-----+---------+-------+
| oficina                                                   |
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id_oficina   | varchar(10) | NO   | PRI | NULL    |       |
| id_ciudad    | int         | NO   | MUL | NULL    |       |
| telefono     | varchar(20) | NO   |     | NULL    |       |
| id_direccion | int         | NO   | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
CREATE TABLE oficina (
  id_oficina VARCHAR(10) NOT NULL,
  id_ciudad INT(5) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  id_direccion INT(5) NOT NULL,
  PRIMARY KEY (id_oficina),
  FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad),   
  FOREIGN KEY (id_direccion) REFERENCES direccion (id_direccion)   
);



+---------------+-------------+------+-----+---------+-------+
| ciudad                                                     |
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_ciudad     | int         | NO   | PRI | NULL    |       |
| nombre_ciudad | varchar(50) | YES  |     | NULL    |       |
| codigo_postal | varchar(10) | YES  |     | NULL    |       |
| id_region     | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
CREATE TABLE ciudad (
    id_ciudad INT(5),
    nombre_ciudad VARCHAR(50),
    codigo_postal VARCHAR(10),
    id_region INT(5),
    PRIMARY KEY (id_ciudad),
    FOREIGN KEY (id_region) REFERENCES region(id_region)
);



+---------------+-------------+------+-----+---------+-------+
| region                                                     |
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_region     | int         | NO   | PRI | NULL    |       |
| nombre_region | varchar(20) | YES  |     | NULL    |       |
| id_pais       | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
CREATE TABLE region (
    id_region INT(5),
    nombre_region VARCHAR(20),
    id_pais INT(5),
    PRIMARY KEY (id_region),
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);



+-------------+-------------+------+-----+---------+-------+
| pais                                                     |
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| id_pais     | int         | NO   | PRI | NULL    |       |
| nombre_pais | varchar(20) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
CREATE TABLE pais (
    id_pais INT(5),
    nombre_pais VARCHAR(20),
    PRIMARY KEY (id_pais)
);



+--------------+-------------+------+-----+---------+-------+
| proveedor                                                 |
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id_proveedor | varchar(50) | NO   | PRI | NULL    |       |
| nombre       | varchar(70) | YES  |     | NULL    |       |
| id_ciudad    | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
CREATE TABLE proveedor (
    id_proveedor VARCHAR(50),
    nombre VARCHAR(70),
    id_ciudad INT(5),
    PRIMARY KEY (id_proveedor),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);



+----------------+-------------+------+-----+---------+-------+
| direccion                                                   |
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id_direccion   | int         | NO   | PRI | NULL    |       |
| tipo_direccion | varchar(50) | YES  |     | NULL    |       |
| direccion      | varchar(50) | YES  |     | NULL    |       |
| descripcion    | text        | YES  |     | NULL    |       |
| id_ciudad      | int         | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
CREATE TABLE direccion (
    id_direccion INT(5),
    tipo_direccion VARCHAR(50),
    direccion VARCHAR(50),
    descripcion TEXT,
    id_ciudad INT(5),
    PRIMARY KEY (id_direccion),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);