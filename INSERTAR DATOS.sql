insert into encuesta (n_ecuesta) values ('SocialTIC'); 

insert into tema 
(id_encuesta, n_tema)
values 
(1,'Datos Personales'),
(1,'Amenazas Cibernéticas'),
(1,'Redes Sociales'),
(1,'Privacidad y Contraseñas'),
(1,'Internet');


INSERT INTO pregunta
(n_pregunta, id_tema, id_encuesta)
VALUES('¿Qué edad tienes?', 1, 1),
('¿Con que género te identificas?',1,1),
('¿A qué rama pertenece la licenciatura que actualmente estudias?',1,1),
('¿Qué tan importante es la educación de ciberseguridad para ti?',2,1),
('¿Cual crees que es la cuestión más importante en temas de educación de ciberseguridad?',2,1),
('¿Para que usas el internet?' ,5,1),
('Selecciona las redes sociales que utilizas en tu día a día',3,1),
('Selecciona las plataformas de streaming que utilizas en tu día a día',5,1),
('¿Cuántas horas en promedio pasas en plataformas de streaming al día?',5,1),
('Selecciona las plataformas de videojuegos que más utilizas',5,1),
('Selecciona las plataformas educativas que utilizas en tu día a día',3,1),
('¿Dónde consideras que existe mayor riesgo de amenazas y/o ciber ataques?',2,1),
('¿Alguna vez has sido víctima de alguna amenaza cibernética?',2 ,1),
('¿Cuántas horas en promedio pasas en redes sociales al día?' ,3,1),
('¿Usas las redes sociales como apoyo en tus estudios universitarios?',3,1), 
('¿Qué tan familiarizado estas con las amenazas cibernéticas?', 2,1),
('¿Cuál crees que es la mayor amenaza para ti cuando te conectas? Elija todas las casillas que apliquen.',4,1),
('¿Alguna vez has agregado a una persona que no conocías en una red social o en alguna plataforma de videojuegos?',4,1),
('¿Qué cuentas o páginas usas para tus estudios?',5,1),
('¿Cuál crees que es el mayor beneficicio de las redes sociales en tus estudios ?',3,1),
('Señala si has recibido alguna de estas amenazas  cibernéticas:',2,1),
('¿En dónde recibiste las amenazas?',2,1),
('¿A cuántas personas has agregado?',4,1),
('Si respondiste que sí a la pregunta anterior, ¿compartiste información sensibles con ellos?',4,1),
('¿Fuiste víctima de alguna de estas opciones?' ,3,1),
('¿Hiciste lo que se te pedía en el mensaje?',3,1),
('¿Reportaste la cuenta?',3,1),
('¿Cuáles Medidas de privacidad tomaste? ',4,1);

insert into respuesta 
(n_respuesta, id_tema,id_encuesta) values 
('17-20',1,1),
('Femenino',1,1),
('Ciencia ',1,1),
('Muy importante',2,1),
('Prevenir accesos de tus cuentas sin permiso',2,1),
('Facebook',3,1),
('Netflix ',5,1),
('Menos de 1 hora ',5,1),
('PC',5,1),
('Khan Academy',5,1),
('Redes sociales',5,1),
('Si',2,1),
('Menos de 1 hora ',3,1),
('Noticieros/periódicos  ',5,1),
('Colaboración de proyectos ',3,1),
('Nada',2,1),
('Intimidación o acoso por parte de amigos o conocidos',2,1),
('Ciber acoso',2,1),
('Si',3,1),
('Facebook',3,1),
('1 a 3 ',3,1),
('Extor
 ón ',3,1),
('Siempre ',4,1),
('Sí',4,1),
('Menos de 1 mes ',4,1),
('Cambio constante de contraseñas ',4,1),
('Nunca me siento seguro y me preocupan mucho los peligros ',2,1),
('21-24',1,1),
('Masculino',1,1),
('Ciencias Sociales ',1,1),
('Importante',2,1),
('Proteger información personal en linea',2,1),
('Streaming',5,1),
('Instagram',3,1),
('Amazon Prime ',5,1),
('Entre 1 y 2 horas ',5,1),
('Xbox',5,1),
('Coursera',5,1),
('Nevegación web',3,1),
('No',2,1),
('No ',3,1),
('Tutoriales o crash courses ',5,1),
('Videos ',3,1),
('Muy poco',2,1),
('Avances sexuales no deseados por redes sociales',2,1),
('Ciber bullying',2,1),
('Instagram',3,1),
('4 a 6 ',3,1),
('Negocio pirámide (Pyramid scheme)',3,1),
('Casi siempre',4,1),
('No',4,1),
('1 a 6 meses ',4,1),
('VF2 (autentificación de dos pasos) ',4,1),
('Los considero importantes ',2,1),
('25 +',1,1),
('Otro',1,1),
('Humanidades ',1,1),
('Poco importante',2,1),
('Evitar ciber acoso, ciber bullying, entre otros',2,1),
('Videojuegos ',5,1),
('Twitter',3,1),
('Clarovideo',5,1),
('Entre 3 y 4 horas ',5,1),
('Nintendo ',5,1),
('Chegg',3,1),
('E-mail',3,1),
('Revistas científicas o similares ',5,1),
('Comunicaión entre profesores y estudiantes ',3,1),
('Regular',2,1),
('Que alguien use tus fotos de manera inapropiada',2,1),
('Robo de identidad',2,1),
('Twitter',3,1),
('6 a 10 ',3,1),
('Estafa ',3,1),
('A veces ',4,1),
('7 a 12 meses ',4,1),
('Leer los avisos de privacidad ',4,1),
('Me son indiferentes ',2,1),
('Ingienería',1,1),
('No es importante',2,1),
('Otro (especifique)',2,1),
('Plataformas educativas ',5,1),
('Tiktok',3,1),
('Blim ',5,1),
('Más de 4 horas ',5,1),
('PlayStaion',5,1),
('Otro (especifique)',5,1),
('Aplicaciones',3,1),
('Una página de un profesionista influyente en tu área',5,1),
('Descarga de documentos ',3,1),
('Algo',2,1),
('Spam',2,1),
('Tiktok',3,1),
('11 o más ',3,1),
('Fraude ',3,1),
('Casi nunca ',4,1),
('1 a 2 años ',4,1),
('Tengo antivirus descargado en mi dispositivo ',4,1),
('Conozco los peligros pero no me afectan ',2,1),
('Deportes ',1,1),
('Soy indiferente',2,1),
('Sanpchat',3,1),
('HBO Max',5,1),
('Ninguna',3,1),
('Smartphone',3,1),
('Mucho',2,1),
('Phishing',2,1),
('Otro',3,1),
('Nunca ',4,1),
('Más de 2 años',4,1),
('Checar que la conexión sea segura antes de hacer pagos en línea ',4,1),
('No me preocupan ',2,1),
('Otro',1,1),
('Disney +',3,1),
('niguno',3,1),
('Spoofing',2,1),
('No aplica ',3,1),
('Tapar tu camara cuando no la estés usando ',4,1),
('No los conozco ',2,1),
('No aplica',2,1),
('Ninguna',3,1);


