create table registro(id_reg integer,
                       nombre varchar2(40),
                       email varchar2(40),
                       edad integer,
                       
              constraint pk_id_reg primary key(id_reg));
              
create table registro_mayores(id_regmayor integer,
                       nombre varchar2(40),
                       email varchar2(40),
                       edad integer,
                       
              constraint pk_id_regmayor primary key(id_regmayor)); 
              
create table registro_menores(id_regmenor integer,
                       nombre varchar2(40),
                       email varchar2(40),
                       edad integer,
                       
              constraint pk_id_regmenor primary key(id_regmenor));  
              
CREATE OR REPLACE TRIGGER RESPALDO_REGISTRO AFTER INSERT ON registro for each row
begin
IF :NEW.EDAD<0 THEN
RAISE_APPLICATION_ERROR(-20001,'LO SIENTO NO PUEDES INGRESAR VALOR NEGATIVO');
ELSE
IF :NEW.EDAD>=18 THEN
INSERT INTO REGISTRO_MAYORES VALUES(:NEW.ID_REG, :NEW.NOMBRE, :NEW.EMAIL, :NEW.EDAD);  --VALORES SE LOS CAMPOS NO LOS NOMBRES
ELSE
INSERT INTO REGISTRO_MENORES VALUES(:NEW.ID_REG, :NEW.NOMBRE, :NEW.EMAIL, :NEW.EDAD);
END IF;
END;
/
INSERT INTO  registro_mayores(10, 'ALE','ALEX-GALINDO',-20);
SELECT * FROM registro_mayores;
