insert into encuesta (n_ecuesta) values ('SocialTIC'); 

insert into tema 
(id_encuesta, n_tema)
values 
(1,'Datos Personales'),
(1,'Amenazas Cibernéticas'),
(1,'Redes Sociales y Phishing'),
(1,'Privacidad y Contraseñas');


INSERT INTO pregunta
(n_pregunta, id_tema, id_encuesta)
VALUES('¿Qué edad tienes?', 1, 1),
('¿Con que género te identificas?',1,1),
('¿A qué rama pertenece la licenciatura que actualmente estudias?',1,1),
('¿Qué tan importante es la educación de ciberseguridad para ti?',2,1),
('¿Cual crees que es la cuestión más importante en temas de educación de ciberseguridad?',2,1),
('Selecciona las tecnologías que más frecuente usas' ,1,1),
('Selecciona las redes sociales que utilizas en tu día a día',3,1),
('Selecciona las plataformas de streaming que utilizas en tu día a día',3,1),
('¿Cuántas horas en promedio pasas en plataformas de streaming al día?',3,1),
('Selecciona las plataformas de videojuegos que más utilizas',3,1),
('Selecciona las plataformas educativas que utilizas en tu día a día',3,1),
('¿Dónde consideras que existe mayor riesgo de amenazas y/o ciber ataques?',2,1),
('¿Alguna vez has sido víctima de alguna amenaza cibernética?',2 ,1),
('¿Cuántas horas en promedio pasas en redes sociales al día?' ,3,1),
('¿Usas las redes sociales como apoyo en tus estudios universitarios?',3,1), 
('¿Qué tan familiarizado estas con las amenazas cibernéticas?', 2,1),
('¿Cuál crees que es la mayor amenaza para ti cuando te conectas? Elija todas las casillas que apliquen.',4,1),
('¿Alguna vez has agregado a una persona que no conocías en una red social o en alguna plataforma de videojuegos?',4,1),
('¿Qué cuentas o páginas usas para tus estudios?',3,1),
('¿Cuál crees que es el mayor beneficicio de las redes sociales en tus estudios ?',3,1),
('Señala si has recibido alguna de estas amenazas  cibernéticas:',2,1),
('¿En dónde recibiste las amenazas?',2,1),
('¿A cuántas personas has agregado?',4,1),
('Si respondiste que sí a la pregunta anterior, ¿compartiste información sensibles con ellos?',4,1),
('¿Fuiste víctima de alguna de estas opciones?' ,3,1),
('¿Hiciste lo que se te pedía en el mensaje?',3,1),
('¿Reportaste la cuenta?',3,1),
('¿Cuáles Medidas de privacidad tomaste? ',4,1);

