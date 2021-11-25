-- creación de las tablas 


create table persona(
id_persona numeric(4,0) constraint pk_persona primary key, 
edad varchar(10) not null,
genero varchar(10) not null,
area_estudio varchar(15) not null);

create sequence id_persona_persona_seq start 1 increment 1;
alter table persona alter column id_persona set default nextval('id_persona_persona_seq');


create table pregunta(
id_pregunta numeric(4,0) constraint pk_pregunta primary key, 
n_pregunta varchar(50) not null,
id_tema numeric(4) references tema (id_tema), 
id_encuesta numeric(4) references encuesta (id_encuesta));

create table respuesta (
id_respuesta numeric(4,0) constraint pk_respuesta primary key, 
n_respuesta varchar(50) not null,
id_encuesta numeric(4) references encuesta(id_encuesta),
id_tema numeric(4) references tema(id_tema));


create table tema (
id_tema numeric(4,0) constraint pk_tema primary key, 
n_tema varchar(15) not null, 
id_encuesta numeric(4) references encuesta(id_encuesta));

create table encuesta (
id_encuesta numeric(4,0) constraint pk_encuesta primary key, 
n_ecuesta varchar(15) not null);

create table persona_pregunta(
id_persona numeric(4) references persona(id_persona) on update cascade on delete cascade, 
id_pregunta numeric (4) references pregunta(id_pregunta) on update cascade, 
constraint pk_persona_pregunta primary key(id_persona, id_pregunta));

create table persona_respuesta (
id_persona numeric(4) references persona(id_persona) on update cascade on delete cascade, 
id_respuesta numeric (4) references respuesta(id_respuesta) on update cascade, 
constraint pk_persona_respuesta primary key(id_persona, id_respuesta));


create table persona_encuesta(
id_persona numeric(4) references persona(id_persona) on update cascade on delete cascade, 
id_encuesta numeric (4) references encuesta(id_encuesta) on update cascade, 
constraint pk_persona_encuesta primary key(id_persona, id_encuesta));


create table pregunta_respuesta(
id_pregunta numeric(4) references pregunta(id_pregunta) on update cascade on delete cascade, 
id_respuesta numeric (4) references respuesta(id_respuesta) on update cascade, 
constraint pk_pregunta_respuesta primary key(id_pregunta, id_respuesta))
 

-- eliminacion de objetos OJO ESTO VA EN CONTRA DE LOS PRINCIPIOS EN CLASE (NO SE BORRA LA INFORMACIÓN)

TRUNCATE TABLE persona;
DROP TABLE table_name;

TRUNCATE TABLE persona;
DROP TABLE table_name;

TRUNCATE TABLE respuesta;
DROP TABLE respuesta;

TRUNCATE TABLE pregunta;
DROP TABLE pregunta;

TRUNCATE TABLE tema;
DROP TABLE tema;

TRUNCATE TABLE encuesta;
DROP TABLE encuesta;

TRUNCATE TABLE respuesta;
DROP TABLE respuesta;

TRUNCATE TABLE persona_encuesta;
DROP TABLE persona_encuesta;

TRUNCATE TABLE persona_pregunta;
DROP TABLE persona_pregunta;

TRUNCATE TABLE persona_respuesta;
DROP TABLE perdsona_respuesta;

TRUNCATE TABLE pregunta_respuesta;
DROP TABLE pregunta_respuesta;

-- comandos de tabla persona

INSERT INTO persona
(edad, genero, area_estudio)
VALUES('', '', '');


UPDATE persona
SET edad='', genero='', area_estudio=''
WHERE id_persona= 0;


DELETE FROM persona
WHERE id_persona= 0;



-- comanodos de la tabla pregunta

INSERT INTO pregunta
(id_pregunta, n_pregunta, id_tema, id_encuesta)
VALUES(0, '', 0, 0);


UPDATE pregunta
SET n_pregunta='', id_tema=0, id_encuesta=0
WHERE id_pregunta=0;

DELETE FROM pregunta
WHERE id_pregunta=0;


-- comandos de la tabla encuesta 

INSERT INTO encuesta
(id_encuesta, n_ecuesta)
VALUES(0, '');


INSERT INTO encuesta
(id_encuesta, n_ecuesta)
VALUES(0, '');


DELETE FROM encuesta
WHERE id_encuesta=0;


--comandos de la tabla tema para


INSERT INTO tema
(id_tema, n_tema, id_encuesta)
VALUES(0, '', 0);


UPDATE tema
SET n_tema='', id_encuesta=0
WHERE id_tema=0;


DELETE FROM tema
WHERE id_tema=0;


-- comandos de la tabla respuesta

INSERT INTO respuesta
(id_respuesta, n_respuesta, id_encuesta, id_tema)
VALUES(0, '', 0, 0);


UPDATE respuesta
SET n_respuesta='', id_encuesta=0, id_tema=0
WHERE id_respuesta=0;


DELETE FROM respuesta
WHERE id_respuesta=0;


--comandos de la tabla persona_encuesta

INSERT INTO persona_encuesta
(id_persona, id_encuesta)
VALUES(0, 0);


UPDATE persona_encuesta
SET 
WHERE id_persona=0 AND id_encuesta=0;


DELETE FROM persona_encuesta
WHERE id_persona=0 AND id_encuesta=0;


-- comados de la tabla persona_pregunta

INSERT INTO persona_pregunta
(id_persona, id_pregunta)
VALUES(0, 0);


UPDATE persona_pregunta
SET 
WHERE id_persona=0 AND id_pregunta=0;


DELETE FROM persona_pregunta
WHERE id_persona=0 AND id_pregunta=0;


-- commandos de la tabla persona_respuesta

INSERT INTO persona_respuesta
(id_persona, id_respuesta)
VALUES(0, 0);


UPDATE persona_respuesta
SET 
WHERE id_persona=0 AND id_respuesta=0;


DELETE FROM persona_respuesta
WHERE id_persona=0 AND id_respuesta=0;


-- comandos de la tabla pregunta_respuesta

INSERT INTO pregunta_respuesta
(id_pregunta, id_respuesta)
VALUES(0, 0);


UPDATE pregunta_respuesta
SET 
WHERE id_pregunta=0 AND id_respuesta=0;

DELETE FROM pregunta_respuesta
WHERE id_pregunta=0 AND id_respuesta=0;

