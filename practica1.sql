--crearemos una tabla muy simple para probar el poder de pl sql

create table dance(id_dancer integer, nombre varchar2(40), edad integer);
-- prendemos el servidor en modo de desarrollador
set serveroutput on;
-- vamos a empezar con un bloque pl sql
declare
-- aqui se declara las variables

edad integer;
years integer;
begin
-- aqui se pone la logica del programa
years:=20;

edad:=years*365;
dbms_output.put_line('tu edad en dias es'||edad);

end;
/
--crear un bloque pl sql que genere 200,000 registros en secuencia ascendente en la tabla dance
begin 

for I in 1..200000 loop
insert into dance values(I,'Ale',20);
end loop;

end;
/
SELECT * FROM DANCE;
--SISTEMA DE PELICULAS LA DE SALAS SERA LA TAREA

CREATE TABLE PELICULA (ID_PELICULA INTEGER,
        TITULO VARCHAR2(120),
        SINOPSIS VARCHAR2(500),
        CLASIFICACION VARCHAR2(5),
        CONSTRAINT PK_ID_PELICULA PRIMARY KEY(ID_PELICULA)
        );
DESCRIBE PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
ID_PELICULA INTEGER,
HORARIO VARCHAR2(8),
CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA (ID_PELICULA)
);
CREATE TABLE SALA (ID_SALA INTEGER, ID_PELICULA INTEGER, NUM_SALA INTEGER,
CONSTRAIN PK_ID_SALA PRIMARY KEY (ID_SALA);
CONSTRAIN FK2_ID_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA)
);

