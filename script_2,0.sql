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

create sequence id_pregunta_pregunta_seq start 1 increment 1;
alter table pregunta alter column id_pregunta set default nextval('id_pregunta_pregunta_seq');


create table respuesta (
id_respuesta numeric(4,0) constraint pk_respuesta primary key, 
n_respuesta varchar(50) not null,
id_encuesta numeric(4) references encuesta(id_encuesta),
id_tema numeric(4) references tema(id_tema));

create sequence id_respuesta_respuesta_seq start 1 increment 1;
alter table respuesta alter column id_respuesta set default nextval('id_respuesta_respuesta_seq');


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



create table persona_pregunta_respuesta(
id_persona numeric(4) references persona(id_persona) ON UPDATE CASCADE ON DELETE CASCADE, 
id_pregunta numeric(4) references pregunta (id_pregunta) on update cascade,
id_respuesta numeric(4) references respuesta(id_respuesta) on update cascade,
constraint pk_persona_pregunta_respuesta primary key(id_persona, id_pregunta, id_respuesta))

 

