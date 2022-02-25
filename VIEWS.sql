/*�De acuerdo al g�nero cu�l es la mayor amenaza al conectarse a internet?*/
CREATE VIEW amenaza_conectarse_internet as select p2.edad,r.n_respuesta,count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro  
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Cu�l crees que es la mayor amenaza para ti cuando te conectas?'
group by r.n_respuesta,p2.edad ;

/*�Qui�n agrega a m�s personas desconocidas en redes sociales de acuerdo al g�nero? */
CREATE VIEW agrega_mas_personas_desconocidas as select p2.edad ,r.n_respuesta ,count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro 
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Alguna vez has agregado a una persona que no conoc�as en una red social o en alguna plataforma de videojuegos?'
group by r.n_respuesta,p2.edad ;

/*�Quien recibi� m�s mensajes directos sospechoso por redes sociales pidi�ndoles que le den  click a un link, descarguen un archivo o proporcionen datos personales como datos bancarios de acuerdo al g�nero? */
CREATE VIEW mensajes_sospechosos_genero as select p2.edad,r.n_respuesta,count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro  
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Has recibido un mensaje directo sospechoso por redes sociales pidi�ndote que le des click a un link, descargues un archivo o proporciones datos personales como datos bancarios?' 
group by r.n_respuesta,p2.edad ;


CREATE VIEW mensajes_se_hizo_mensaje_sospechoso_genero as select p3.edad ,r1.n_respuesta,count(case when p3.genero='Masculino' then 1 end) as Masculino, count(case when p3.genero='Femenino' then 1 end) as Femenino, count(case when p3.genero='Otro' then 1 end) as Otro 
from respuesta r1 join persona_pregunta_respuesta ppr1 ON r1.id_respuesta=ppr1.id_respuesta 
join pregunta p1 on p1.id_pregunta=ppr1.id_pregunta join persona p3 on p3.id_persona =ppr1.id_persona 
where p1.n_pregunta = '�Hiciste lo que se te ped�a en el mensaje?'
and (p3.id_persona) in 
(select p2.id_persona as persona
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Has recibido un mensaje directo sospechoso por redes sociales pidi�ndote que le des click a un link, descargues un archivo o proporciones datos personales como datos bancarios?' 
and n_respuesta='S�' group by p2.id_persona ) group by r1.n_respuesta,p3.edad ;

CREATE VIEW mensajes_se_reporto_cuenta_mensaje_sospechoso_genero as select p3.edad ,r1.n_respuesta, count(case when p3.genero='Masculino' then 1 end) as Masculino, count(case when p3.genero='Femenino' then 1 end) as Femenino, count(case when p3.genero='Otro' then 1 end) as Otro 
from respuesta r1 join persona_pregunta_respuesta ppr1 ON r1.id_respuesta=ppr1.id_respuesta 
join pregunta p1 on p1.id_pregunta=ppr1.id_pregunta join persona p3 on p3.id_persona =ppr1.id_persona 
where p1.n_pregunta = '�Reportaste la cuenta?'
and (p3.id_persona) in 
(select p2.id_persona as persona
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Has recibido un mensaje directo sospechoso por redes sociales pidi�ndote que le des click a un link, descargues un archivo o proporciones datos personales como datos bancarios?' 
and n_respuesta='S�' group by p2.id_persona ) group by r1.n_respuesta,p3.edad ;


/*�Qu� g�nero fue mayor v�ctima de las amenazas cibern�ticas?  */
CREATE VIEW mayor_victima_amenazas_genero as select p2.edad ,r.n_respuesta, count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro  
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Fuiste v�ctima de alguna de estas opciones?' and n_respuesta != 'Ninguna' group by r.n_respuesta,p2.edad ;

CREATE VIEW mayor_victima_amenazas_genero_1 as select p2.edad ,r.n_respuesta ,count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro 
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?' group by r.n_respuesta,p2.edad ;
 

/*�Qu� amenaza cibernetica se ha recibido con mayor freciencia de acuerdo el area de estudio y genero?"*/
CREATE VIEW mayor_frecuencia_area_estudio_genero as (select r.n_respuesta,p2.area_estudio , count(case when p2.genero='Masculino' then 1 end) as Masculino, count(case when p2.genero='Femenino' then 1 end) as Femenino, count(case when p2.genero='Otro' then 1 end) as Otro  
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Fuiste v�ctima de alguna de estas opciones?' and n_respuesta != 'Ninguna' group by r.n_respuesta,p2.area_estudio);

/*�Qu� tanto impacto tiene el �rea de estudios en el conocimiento de las amenazas cibern�ticas?*/
CREATE VIEW impacto_area_estudios_conocimiento_amenazas_cibern�ticas as select r.n_respuesta, count(case when p2.area_estudio ='Ciencia' then 1 end) as num_ciencia, 
count(case when p2.area_estudio ='Ciencias Sociales' then 1 end) as num_ciencia_soc, 
count(case when p2.area_estudio ='Humanidades' then 1 end) as num_hum,
count(case when p2.area_estudio ='Ingenier�a' then 1 end) as num_ing,
count(case when p2.area_estudio ='Deportes' then 1 end) as num_dep,
count(case when p2.area_estudio ='Otro' then 1 end) as num_otro
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Qu� tan familiarizado estas con las amenazas cibern�ticas?'  group by r.n_respuesta;

/*�Qu� tan importante es la educaci�n de ciberseguridad para ti?*/
select r.n_respuesta, count(case when p2.area_estudio ='Ciencia' then 1 end) as num_ciencia, 
count(case when p2.area_estudio ='Ciencias Sociales' then 1 end) as num_ciencia_soc, 
count(case when p2.area_estudio ='Humanidades' then 1 end) as num_hum,
count(case when p2.area_estudio ='Ingenier�a' then 1 end) as num_ing,
count(case when p2.area_estudio ='Deportes' then 1 end) as num_dep,
count(case when p2.area_estudio ='Otro' then 1 end) as num_otro
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Qu� tan importante es la educaci�n de ciberseguridad para ti?'  group by r.n_respuesta;

/*De acuerdo a la importancia que le dan a la educaci�n en ciberseguridad, �fueron v�ctimas de una amenaza cibern�tica? 
*/
CREATE VIEW victimas_amenaza_importancia_ciberceguridad as select r2.n_respuesta, count(p4.id_persona) as num_personas_vict_ame_ciber
from respuesta r2 join persona_pregunta_respuesta ppr2 on r2.id_respuesta=ppr2.id_respuesta 
join pregunta p3 on p3.id_pregunta=ppr2.id_pregunta join persona p4 on p4.id_persona=ppr2.id_persona 
where p3.n_pregunta = '�Qu� tan importante es la educaci�n de ciberseguridad para ti?' 
and p4.id_persona in (
select p2.id_persona 
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?' and r.n_respuesta ='S�'
)
group by r2.n_respuesta;

/*�Cu�ntas personas que recibieron un mensaje sospechoso en redes sociales  reportaron la cuenta? */

CREATE VIEW personas_mensaje_sospechoso_reportaron as select r1.n_respuesta ,count(p3.id_persona) as num_per_rep
from respuesta r1 join persona_pregunta_respuesta ppr1 ON r1.id_respuesta=ppr1.id_respuesta 
join pregunta p1 on p1.id_pregunta=ppr1.id_pregunta join persona p3 on p3.id_persona =ppr1.id_persona 
where p1.n_pregunta = '�Reportaste la cuenta?'
and (p3.id_persona) in 
(select p2.id_persona as persona
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Has recibido un mensaje directo sospechoso por redes sociales pidi�ndote que le des click a un link, descargues un archivo o proporciones datos personales como datos bancarios?' 
and n_respuesta='S�' group by p2.id_persona ) group by r1.n_respuesta;


/*C�mo impacta el haber sido v�ctima de una amenaza cibern�tica en la percepci�n de los peligros en internet?*/

CREATE VIEW victima_cibernetica_percepci�n_peligros as select r1.n_respuesta,count(p3.id_persona) as num_personas_percep
from respuesta r1 join persona_pregunta_respuesta ppr1 ON r1.id_respuesta=ppr1.id_respuesta 
join pregunta p1 on p1.id_pregunta=ppr1.id_pregunta join persona p3 on p3.id_persona =ppr1.id_persona 
where p1.n_pregunta = '�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
and (p3.id_persona) in 
(select p2.id_persona as persona
from respuesta r join persona_pregunta_respuesta ppr ON r.id_respuesta=ppr.id_respuesta 
join pregunta p on p.id_pregunta=ppr.id_pregunta join persona p2 on p2.id_persona =ppr.id_persona 
where p.n_pregunta = '�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?' 
and n_respuesta='S�' group by p2.id_persona ) group by r1.n_respuesta;

/*�C�mo impacta la importancia que le dan los estudiantes a la educaci�n en ciberseguridad 
 a la percepci�n que tienen sobre los peligros en l�nea?*/

CREATE VIEW importancia_estudiantes_educacion_percepcion_peligros_linea as with ciberseguridad as (
select 
n_respuesta as importancia,
id_persona
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=4
order by 2 desc
),peligros as (
select 
n_respuesta as percepci�n_peligros,
id_persona
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=35
order by 2 desc
)
select 
p.percepci�n_peligros,
c.importancia,
count(id_persona) as numero_personas
from peligros p 
join ciberseguridad c using (id_persona)
group by 1,2
order by 1,2;

--�De los que respondieron que s� usan las redes sociales como apoyo en sus estudios, cu�nto tiempo pasan en redes sociales?

create view apoyo_redes_sociales_tiempo_redes_sociales 
as select 
count(uno.id_persona),
dos.n_respuesta
from
(select p.id_persona ,p2.n_pregunta, r.id_respuesta , r.n_respuesta 
from persona p 
join persona_pregunta_respuesta ppr ON p.id_persona = ppr.id_persona 
join pregunta p2 on ppr.id_pregunta = p2.id_pregunta 
join respuesta r on ppr.id_respuesta =r.id_respuesta 
where (p2.id_pregunta =15 and r.id_respuesta =61)) as uno
join 
(select  p.id_persona , p2.n_pregunta , r.id_respuesta , r.n_respuesta 
from persona p 
join persona_pregunta_respuesta ppr ON p.id_persona = ppr.id_persona 
join pregunta p2 on ppr.id_pregunta = p2.id_pregunta 
join respuesta r on ppr.id_respuesta =r.id_respuesta 
where p2.id_pregunta =14) as dos
on uno.id_persona = dos.id_persona
group by (dos.n_respuesta);


--�cu�l es el mayor beneficio de las redes sociales en sus estudios ?
create view mayor_beneficio_redes_sociales as
select  
count(uno.id_persona),
dos.n_respuesta
from
(select p.id_persona ,p2.n_pregunta, r.id_respuesta , r.n_respuesta 
from persona p 
join persona_pregunta_respuesta ppr ON p.id_persona = ppr.id_persona 
join pregunta p2 on ppr.id_pregunta = p2.id_pregunta 
join respuesta r on ppr.id_respuesta =r.id_respuesta 
where (p2.id_pregunta =15 and r.id_respuesta =61)) as uno
join 
(select  p.id_persona , p2.n_pregunta , r.id_respuesta , r.n_respuesta 
from persona p 
join persona_pregunta_respuesta ppr ON p.id_persona = ppr.id_persona 
join pregunta p2 on ppr.id_pregunta = p2.id_pregunta 
join respuesta r on ppr.id_respuesta =r.id_respuesta 
where p2.id_pregunta =17) as dos
on uno.id_persona = dos.id_persona
group by dos.n_respuesta;


--�Cu�l es la p�gina m�s utilizada por estudiantes para sus estudios?
create view pagina_mas_utilizada_por_estudiantes as
select count(ppr.id_persona) ,  r.n_respuesta 
from persona_pregunta_respuesta ppr 
join respuesta r on ppr.id_respuesta = r.id_respuesta 
where ppr.id_pregunta = 11
group by   r.n_respuesta;


---De acuerdo al �rea de estudio

---1)
---�De acuerdo a la carrera cual es el mayor beneficio de usar el internet en sus estudios?
create view carrera_mayor_beneficio_redes_sociales as 
select 
persona.area_estudio,
r.n_respuesta as mayor_beneficio,
count(distinct persona.id_persona) as n�mero_de_personas
from pregunta p
join persona_pregunta_respuesta ppr using(id_pregunta)
join respuesta r using(id_respuesta)
join persona using (id_persona)
where id_pregunta=17
group by 1,2;



--2)
---�Qu� �rea de estudio usa m�s plataformas educativas?

create view area_estudio_plataformas_educativas as 
select 
p2.area_estudio,
r.n_respuesta,
count(id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using (id_pregunta)
join respuesta r using (id_respuesta)
join persona p2 using (id_persona)
where id_pregunta =11
group by 1,2
order by 1,2;



---3)
---�D�nde consideras que existe mayor riesgo de amenazas y/o ciber ataques?
create view mayor_riesgo_de_amenazass as 
select 
area_estudio,
n_respuesta as or�gen_de_amenazas,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=12
group by 1,2
order by 1,2;

---�Alguna vez has sido v�ctima de alguna amenaza cibern�tica? 
create view victima_amenaza_ciber as select 
area_estudio,
n_respuesta as ha_sido_v�ctima,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=13
group by 1,2
order by 1,2;

---�Qu� tan familiarizado estas con las amenazas cibern�ticas? 
select 
area_estudio,
n_respuesta as Conocimiento_de_amenazas,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=18
group by 1,2
order by 1,2;

---�Cu�l crees que es la mayor amenaza para ti cuando te conectas?
select 
area_estudio,
n_respuesta as mayor_amenaza_para_ti,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=19
group by 1,2
order by 1,2;

---Se�ala si has recibido alguna de estas amenazas  cibern�ticas:
select 
area_estudio,
n_respuesta as amenaza,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=20
group by 1,2
order by 1,2;


---4)
------�Qu� tan importante es la educaci�n de ciberseguridad para ti?
create view importancia_ciberseguridad as 
select 
area_estudio,
n_respuesta as importancia,
count(id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=4
group by 1,2
order by 1,2;

---�Cu�l crees que es la cuesti�n m�s importante en temas de educaci�n de ciberseguridad?
select 
area_estudio,
n_respuesta as importancia,
count(id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=5
group by 1,2
order by 1,2;


-------------
---Usos y necesidades de los estudiantes  


---5)
---�Cu�ntos estudiantes usan una plataforma de videojuegos?
create view numero_alumnos_que_usan_videojuegos as 
select 
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=10
and n_respuesta not in ('Ninguna');

---�Cuantos estudiantes utilizan que plataformas de videojuegos?(Por area de estudio)

create view videojuegos_alumnos as 
select 
area_estudio,
n_respuesta as plataforma,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=10
group by 1,2
order by 1,2;

---3) �Cu�nto es el rango de tiempo m�s usual  que pasan en streaming?

create view tiempo_en_streaming as 
select 
n_respuesta as rango_de_tiempo,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=9
group by 1
order by 2 desc
limit 1;

---2) �Cu�nto es el rango de tiempo m�s usual en redes sociales?
create view tiempo_en_redes_sociales as 
select 
n_respuesta as rango_de_tiempo,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=14
group by 1
order by 2 desc 
limit 1;

---4) �Para qu� usan el internet los estudiantes?  
create view usos_internet as 
select 
n_respuesta as actividad,
count(distinct id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=6
group by 1
order by 1 desc;


-----------
---Privacidad y Contrase�as



---1)Las personas que reciben amenazas cibern�ticas �leen los avisos de privacidad de las p�ginas en las que navegan?

create view amenazas_leer_avisos_privacidad as 
with personas_con_amenazas as(
	select 
	id_persona,
	n_respuesta as respuesta
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=13
	order by 1

),
personas_avisos as (

	select 
	id_persona,
	n_respuesta as leer_avisos_privacidad
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=29
	order by 1

)

select 
leer_avisos_privacidad,
count(id_persona) as n�mero_de_personas
from personas_con_amenazas
join personas_avisos using(id_persona)
where respuesta='S�'

group by 1
order by 1;

---Las personas que no reciben amenazas cibern�ticas �leen los avisos de privacidad de las p�ginas en las que navegan?
create view no_amenazas_leer_avisos_privacidad as
with personas_con_amenazas as(
	select 
	id_persona,
	n_respuesta as respuesta
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=13
	order by 1

),
personas_avisos as (

	select 
	id_persona,
	n_respuesta as leer_avisos_privacidad
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=29
	order by 1

)

select 
leer_avisos_privacidad,
count(id_persona) as n�mero_de_personas
from personas_con_amenazas
join personas_avisos using(id_persona)
where respuesta='No'

group by 1
order by 1;

---2)Las personas que no leen sus avisos de privacidad,  �cambian constantemente sus contrase�as?
create view no_leer_avisos_cambio_contrase�as as 
with personas_contrase�as as(
	select 
	id_persona,
	n_respuesta as frecuancia_cambio_contrase�as
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=31
	order by 1

),
personas_avisos as (

select 
id_persona,
n_respuesta as leer_avisos_privacidad
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=29
order by 1

)

select 
frecuancia_cambio_contrase�as,
leer_avisos_privacidad,
count(id_persona) as n�mero_de_personas
from personas_contrase�as
join personas_avisos using(id_persona)

group by 1,2
order by 2;

---3)De los usuarios que respondieron que cambian sus contrase�as como medida de seguridad de sus datos �qu� tan frecuente lo hacen?

create view cambian_contrase�as_vs_frecuencia as
with personas_contrase�as as(
	select 
	id_persona,
	n_respuesta as frecuancia_cambio_contrase�as
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=31
	order by 1

),
personas_medidas as (

	select 
	id_persona
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=33
	and n_respuesta='S�'
	order by 1

),
personas_cambian_contrase�as as (
	select 
	id_persona,
	n_respuesta as respuesta
	from pregunta p 
	join persona_pregunta_respuesta ppr using(id_pregunta)
	join persona p2 using(id_persona)
	join respuesta r using(id_respuesta)
	where id_pregunta=34
	and n_respuesta = 'Cambio constante de contrase�as'
	order by 1

)

select 
frecuancia_cambio_contrase�as,
count(id_persona) as n�mero_de_personas
from personas_contrase�as
join personas_cambian_contrase�as using(id_persona)

group by 1
order by 1;

---4)�Cu�l es la medida para proteger la privacidad de datos m�s usada? 

create view medida_m�s_usada_protecci�n as
select 
n_respuesta as medida_seguridad,
count (id_persona) as n�mero_de_personas
from pregunta p 
join persona_pregunta_respuesta ppr using(id_pregunta)
join persona p2 using(id_persona)
join respuesta r using(id_respuesta)
where id_pregunta=34
group by 1
order by 2 desc
limit 1;

--Muy generales 
--�Cu�ntas personas contestaron la encuesta?
create view num_personas as 
select count (p.id_persona) as "Num de respuestas"
from persona p ;

--�En general, �qu� porcentaje de respuestas corresponde a cada g�nero?
create view num_genero as 
select p.genero, count (p.id_persona) as "Num de respuestas"
from persona p 
group by p.genero; 

--�En general, �qu� porcentaje de respuestas corresponde a cada rama de licenciatura?
create view num_area as 
select p.area_estudio, count (p.id_persona) as "Num de respuestas"
from persona p 
group by p.area_estudio; 

--�En general, �cual es la edad promedio de los encuestados?
create view num_edad as 
select p.edad, count (p.id_persona) as "Num de respuestas"
from persona p 
group by p.edad;

--De acuerdo al g�nero
--De acuerdo al g�nero cu�l es la mayor amenaza al conectarse a internet? 
create view amenaza_femenino as 
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p.genero= 'Femenino' and p2.n_pregunta='�D�nde consideras que existe mayor riesgo de amenazas y/o ciber ataques?'
group by r.n_respuesta; 

create view amenaza_masculino as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p.genero= 'Masculino' and p2.n_pregunta='�D�nde consideras que existe mayor riesgo de amenazas y/o ciber ataques?'
group by r.n_respuesta;

--�Qui�n agrega a m�s personas desconocidas en redes sociales de acuerdo al g�nero? 
create view desconocidos_femenino as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�A cu�ntas personas has agregado?'
and p.genero= 'Femenino'
group by r.n_respuesta; 

create view desconocidos_masculino as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�A cu�ntas personas has agregado?'
and p.genero= 'Masculino'
group by r.n_respuesta; 

--�Quien recibi� m�s mensajes directos sospechoso por redes sociales pidi�ndoles que le den  click a un link, descarguen un archivo o proporcionen datos personales como datos bancarios de acuerdo al g�nero? 
create view mensajes_sospechosos as
select p.genero, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Has recibido un mensaje directo sospechoso por redes sociales pidi�ndote que le des click a un link, descargues un archivo o proporciones datos personales como datos bancarios?'
and r.n_respuesta='S�'
group by p.genero; 

--�Qu� g�nero fue mayor v�ctima de las amenazas cibern�ticas?
create view genero_victimas as
select p.genero, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?'
and r.n_respuesta='S�'
group by p.genero;

--De acuerdo al �rea de estudios 
--�De acuerdo a la carrera cual es el mayor beneficio de usar el internet en sus estudios?
create view beneficio_estudios_ciencia_sociales as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�l crees que es el mayor beneficio de las redes sociales en tus estudios ?'
and p.area_estudio='Ciencias Sociales'
group by r.n_respuesta;

create view beneficio_estudios_humanidades as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�l crees que es el mayor beneficio de las redes sociales en tus estudios ?'
and p.area_estudio='Humanidades'
group by r.n_respuesta;

create view beneficio_estudios_otro as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�l crees que es el mayor beneficio de las redes sociales en tus estudios ?'
and p.area_estudio='Otro'
group by r.n_respuesta;

create view beneficio_estudios_ciencia as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�l crees que es el mayor beneficio de las redes sociales en tus estudios ?'
and p.area_estudio='Ciencia'
group by r.n_respuesta;

create view beneficio_estudios_ingenieria as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�l crees que es el mayor beneficio de las redes sociales en tus estudios ?'
and p.area_estudio='Ingenier�a'
group by r.n_respuesta;

--�Qu� �rea de estudio usa m�s plataformas educativas?
create view plataformas_estudio as
select p.area_estudio, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Selecciona las plataformas educativas que utilizas en tu d�a a d�a'
group by p.area_estudio;

--�Qu� tanto impacto tiene el �rea de estudios en el conocimiento de las amenazas cibern�ticas?
create view conocimiento_amenazas_ciencias_sociales as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan familiarizado estas con las amenazas cibern�ticas?'
and p.area_estudio='Ciencias Sociales'
group by r.n_respuesta, p.area_estudio ;

create view conocimiento_amenazas_ciencia as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan familiarizado estas con las amenazas cibern�ticas?'
and p.area_estudio='Ciencia'
group by r.n_respuesta, p.area_estudio;

create view conocimiento_amenazas_otro as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan familiarizado estas con las amenazas cibern�ticas?'
and p.area_estudio='Otro'
group by r.n_respuesta, p.area_estudio;

create view conocimiento_amenazas_humanidades as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan familiarizado estas con las amenazas cibern�ticas?'
and p.area_estudio='Humanidades'
group by r.n_respuesta, p.area_estudio;

create view conocimiento_amenazas_ingenieria as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan familiarizado estas con las amenazas cibern�ticas?'
and p.area_estudio='Ingenier�a'
group by r.n_respuesta, p.area_estudio;

--�De acuerdo al �rea de estudio qu� tan importante es la educaci�n en temas ciberseguridad para los estudiantes?
create view importancia_ciberseguridad_area as
select p.area_estudio, r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan importante es la educaci�n de ciberseguridad para ti?'
group by r.n_respuesta, p.area_estudio ;



--Amenazas cibern�ticas
--Victimas de amenazas cibern�ticas (tabla)
select id_persona 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?'
and r.n_respuesta='S�'; 

create table victimas ( 
id_persona numeric(4) references persona (id_persona) not null
);
insert into victimas 
select id_persona 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Alguna vez has sido v�ctima de alguna amenaza cibern�tica?'
and r.n_respuesta='S�'; 

--De acuerdo a la importancia que le dan a la educaci�n en ciberseguridad, �fueron v�ctimas de una amenaza cibern�tica? 
create view importancia_ciberseguridad_victimas as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join victimas v using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan importante es la educaci�n de ciberseguridad para ti?'
group by r.n_respuesta;

--�Cu�ntas personas que recibieron un mensaje sospechoso en redes sociales  reportaron la cuenta? 
create view reportaron_cuenta as
select count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Reportaste la cuenta?'
and r.n_respuesta='S�'; 

--�C�mo impacta el haber sido v�ctima de una amenaza cibern�tica en la percepci�n de los peligros en internet?
create view victima_percepcion_peligros as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join victimas v using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
group by r.n_respuesta;


--�C�mo impacta la importancia que le dan los estudiantes a la educaci�n en ciberseguridad a la percepci�n que tienen sobre los peligros en l�nea?
create view importancia_ciberseguridad as
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan importante es la educaci�n de ciberseguridad para ti?'
group by r.n_respuesta,id_persona;

--Tabla: importancia
create table importancia ( 
id_persona numeric(4) references persona (id_persona) not null, 
importancia varchar (50) not null
);

insert into importancia
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� tan importante es la educaci�n de ciberseguridad para ti?'
group by r.n_respuesta,id_persona;

create view importante_peligros as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join importancia i using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
and i.importancia='Importante'
group by r.n_respuesta;

create view muy_importante_peligros as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join importancia i using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
and i.importancia='Muy importante'
group by r.n_respuesta;


create view poco_importante_peligros as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join importancia i using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
and i.importancia='Poco importante'
group by r.n_respuesta;


create view no_es_importante_peligros as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join importancia i using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Qu� percepci�n tienes acerca de los peligros que puedes correr en l�nea?'
and i.importancia='No es importante'
group by r.n_respuesta;

--�El tiempo que pasan los estudiantes en redes sociales se relaciona con las amenazas cibern�ticas que reciben?
create view tiempo_redes as
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�ntas horas en promedio pasas en redes sociales al d�a?'
group by r.n_respuesta,id_persona;

--Tabla: tiempo
create table tiempo ( 
id_persona numeric(4) references persona (id_persona) not null, 
tiempo varchar (50) not null
);

insert into tiempo
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�Cu�ntas horas en promedio pasas en redes sociales al d�a?'
group by r.n_respuesta,id_persona;

create view amenazas_menos_de_1_hora as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join tiempo t using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and t.tiempo='Menos de 1 hora'
group by r.n_respuesta;

create view amenazas_entre_1_2_horas as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join tiempo t using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and t.tiempo='Entre 1 y 2 horas'
group by r.n_respuesta;

create view amenazas_entre_3_4_horas as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join tiempo t using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and t.tiempo='Entre 3 y 4 horas'
group by r.n_respuesta;

create view amenazas_mas_4_horas as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join tiempo t using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and t.tiempo='M�s de 4 horas'
group by r.n_respuesta;

--De acuerdo a la plataforma en que se agregan desconocidos , �qu� tipo de amenazas cibern�ticas reciben?
create view plataforma_desconocidos as
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�En d�nde agregaste a una persona desconocida?'
group by r.n_respuesta,id_persona;

--Tabla: Plataforma
create table plataforma ( 
id_persona numeric(4) references persona (id_persona) not null, 
plataforma varchar (50) not null
);

insert into plataforma 
select id_persona, r.n_respuesta 
from persona_pregunta_respuesta ppr 
join persona p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='�En d�nde agregaste a una persona desconocida?'
group by r.n_respuesta,id_persona;


create view amenazas_plataforma_desconocidos_facebook as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join plataforma p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and p.plataforma ='Facebook'
group by r.n_respuesta;

create view amenazas_plataforma_desconocidos_instagram as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join plataforma p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and p.plataforma ='Instagram'
group by r.n_respuesta;

create view amenazas_plataforma_desconocidos_tiktok as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join plataforma p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and p.plataforma ='TikTok'
group by r.n_respuesta;

create view amenazas_plataforma_desconocidos_otro as
select r.n_respuesta, count(ppr.id_respuesta) as "Num de respuestas"
from persona_pregunta_respuesta ppr 
join plataforma p using (id_persona)
join pregunta p2 using (id_pregunta)
join respuesta r using (id_respuesta)
where p2.n_pregunta='Se�ala si has recibido alguna de estas amenazas  cibern�ticas:'
and p.plataforma ='Otro'
group by r.n_respuesta;
