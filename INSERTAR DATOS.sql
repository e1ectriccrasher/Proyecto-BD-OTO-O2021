insert into encuesta (n_ecuesta) values ('SocialTIC'); 

insert into tema 
(id_encuesta, n_tema)
values 
(1,'Datos Personales'),
(1,'Amenazas Cibern�ticas'),
(1,'Redes Sociales y Phishing'),
(1,'Privacidad y Contrase�as');


INSERT INTO pregunta
(n_pregunta, id_tema, id_encuesta)
VALUES('�Qu� edad tienes?', 1, 1),
('�Con que g�nero te identificas?',1,1),
('�A qu� rama pertenece la licenciatura que actualmente estudias?',1,1),
('�Qu� tan importante es la educaci�n de ciberseguridad para ti?',2,1),
('�Cual crees que es la cuesti�n m�s importante en temas de educaci�n de ciberseguridad?',2,1),
('Selecciona las tecnolog�as que m�s frecuente usas' ,1,1),
('Selecciona las redes sociales que utilizas en tu d�a a d�a',3,1),
('Selecciona las plataformas de streaming que utilizas en tu d�a a d�a',3,1),
('�Cu�ntas horas en promedio pasas en plataformas de streaming al d�a?',3,1),
('Selecciona las plataformas de videojuegos que m�s utilizas',3,1),
('Selecciona las plataformas educativas que utilizas en tu d�a a d�a',3,1),
('�D�nde consideras que existe mayor riesgo de amenazas y/o ciber ataques?',2,1),
('�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?',2 ,1),
('�Cu�ntas horas en promedio pasas en redes sociales al d�a?' ,3,1),
('�Usas las redes sociales como apoyo en tus estudios universitarios?',3,1), 
('�Qu� tan familiarizado estas con las amenazas cibern�ticas?', 2,1),
('�Cu�l crees que es la mayor amenaza para ti cuando te conectas? Elija todas las casillas que apliquen.',4,1),
('�Alguna vez has agregado a una persona que no conoc�as en una red social o en alguna plataforma de videojuegos?',4,1),
('�Qu� cuentas o p�ginas usas para tus estudios?',3,1),
('�Cu�l crees que es el mayor beneficicio de las redes sociales en tus estudios ?',3,1),
('Se�ala si has recibido alguna de estas amenazas  cibern�ticas:',2,1),
('�En d�nde recibiste las amenazas?',2,1),
('�A cu�ntas personas has agregado?',4,1),
('Si respondiste que s� a la pregunta anterior, �compartiste informaci�n sensibles con ellos?',4,1),
('�Fuiste v�ctima de alguna de estas opciones?' ,3,1),
('�Hiciste lo que se te ped�a en el mensaje?',3,1),
('�Reportaste la cuenta?',3,1),
('�Cu�les Medidas de privacidad tomaste? ',4,1);

