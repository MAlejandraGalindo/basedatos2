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
