
create database BaseD;
use BaseD;


/*Elimine la tabla "agenda" si existe:*/
if object_id('Agenda') is not null
  drop table Agenda;

/*Necesita almacenar los datos de sus amigos en una tabla. Los datos que guardará serán: apellido, 
nombre, domicilio y teléfono.*/

create table Agenda(
apellido varchar (25),
nombre varchar(24),
dominicilio varchar(40),
telefono varchar(15)
);
go 

go
/*Visualice las tablas existentes */
exec sp_tables @table_owner='dbo'

/*Visualice la estructura de la tabla "agenda"*/

exec sp_columns Agenda;

 /*Elimine la tabla.*/
 drop table Agenda;

 /* Ingrese los siguientes registros:
 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');*/

  insert into Agenda (apellido, nombre, dominicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into Agenda (apellido,nombre, dominicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

  select *from Agenda;
  go

   if object_id('Libros') is not null
  drop table Libros;
  /*Trabaje con la tabla 
  "libros" que almacena los datos de los libros de su propia biblioteca.*/
  create table Libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
  );
  /*visualize las tablasw existentes*/
  exec sp_tables @table_owner='dbo'
   /*Visualice la estructura de la tabla */
  sp_columns Libros;


   insert into Libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into Libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into Libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

  select *from Libros

   if object_id('Peliculas')is not null
  drop table Peliculas;

  create table Peliculas (
  nombre varchar (20),
  actor varchar (20),
  duracion integer,
  cantidad integer 
  );
  /*ver la estructura*/
  sp_columns Peliculas;
  /*insertar registros */

  insert into Peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into Peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into Peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into Peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  /*Motrar registros*/
  select *from Peliculas

  /*Una empresa almacena los datos de sus empleados en una tabla "empleados" 
  que guarda los siguientes datos: nombre, documento, sexo, domicilio, sueldobasico.
*/
 create table Empleados(
  nombre varchar(20),
  documento varchar(8),
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );
 /*ver estructura*/
 sp_columns Empleados;

 /*ingreasar registros*/

  insert into Empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Perez','22333444','m','Sarmiento 123',500);
 insert into Empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','24555666','f','Colon 134',650);
 insert into Empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

  select *from Empleados;
  /*Recuperar algunos campos (select)*/
  /*Realice un "select" mostrando solamente el título y 
  actor de todas las películas*/
   if object_id('Peliculas') is not null
  drop table Peliculas;


 create table Peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );
 insert into Peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  /*- Realice un "select" mostrando solamente el título y actor de todas las películas

6- Muestre el título y duración de todas las peliculas

7- Muestre el título y la cantidad de copias*/

  select titulo,actor from Peliculas;
  select titulo,duracion from Peliculas
  select titulo,cantidad from Peliculas
  
  /*Segundo problema:*/
  /*Muestre todos los datos de los empleados

6- Muestre el nombre, documento y domicilio de los empleados

7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados*/

select *from Empleados
select nombre,documento,domicilio from Empleados
select documento,sexo,sueldobasico from Empleados

/*
6 - Recuperar algunos registros (where)
*/

/*5- Seleccione todos los registros de la tabla agenda

6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)

7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)

8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)*/



insert into Agenda (apellido,nombre,dominicilio,telefono)
values ('Acosta', 'Ana', 'Colon 123', '4234567');
insert into Agenda (apellido,nombre,dominicilio,telefono)
values ('Bustamante', 'Betina' , 'Avellaneda 135', '4458787');
insert into Agenda (apellido,nombre,dominicilio,telefono)
values ( 'Lopez', 'Hector', 'Salta 545', '4887788');
insert into Agenda (apellido,nombre,dominicilio,telefono)
values (  'Lopez',' Luis', 'Urquiza 333', '4545454');
insert into Agenda (apellido,nombre,dominicilio,telefono)
values (   'Lopez', 'Marisa', 'Urquiza 333', '4545454');


select *from Agenda
select nombre from Agenda where nombre ='marisa'
select nombre,dominicilio from Agenda where apellido='Lopez'
select nombre from Agenda where telefono = '4545454'

/*-----------Operadores relacionales------------*/
create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

  /* Seleccione los datos de las impresoras (2 registros)

6- Seleccione los artículos cuyo precio sea mayor o igual a 400 (3 registros)

7- Seleccione el código y nombre de los artículos cuya cantidad sea menor a 30 (2 registros)

8- Selecciones el nombre y descripción de los artículos que NO cuesten $100 (4 registros)
*/

select *from articulos
select *from articulos where precio >= 400;
select codigo,nombre from articulos where cantidad<30;
select nombre, descripcion from articulos where precio <> 100;

/*
Segundo problema:
Un video club que alquila películas en video almacena la información de sus películas en alquiler en 
una tabla denominada "peliculas".*/
 if object_id('Peliculas') is not null
  drop table Peliculas;
  create table Peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );
 insert into Peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into Peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into Peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into Peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);

select *from Peliculas
/*4- Seleccione las películas cuya duración no supere los 90 minutos (2 registros)

5- Seleccione el título de todas las películas en las que el actor NO sea "Tom Cruise" (2 
registros)

6- Muestre todos los campos, excepto "duracion", de todas las películas de las que haya más de 2 
copias (2 registros)*/

select *from Peliculas where duracion =90
select titulo from Peliculas where actor<>'Tom Cruise'
select titulo,actor,cantidad from Peliculas where cantidad>2

/* ----------Borrar registros (delete)-----------*/

if object_id('Agenda') is not null
  drop table Agenda;

   create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
 insert into agenda (apellido,nombre,domicilio,telefono)
 values('Alvarez','Alberto','Colon 123','4234567');

  insert into agenda (apellido,nombre,domicilio,telefono)
 values('Juarez','Juan','Avellaneda 135','4458787');

   insert into agenda (apellido,nombre,domicilio,telefono)
 values('Lopez','Maria','Urquiza 333','4545454');

  insert into agenda (apellido,nombre,domicilio,telefono)
 values('Lopez','Jose','Urquiza 333','4545454');

  insert into agenda (apellido,nombre,domicilio,telefono)
 values(' Salas','Susana','Gral. Paz 1234','4123456');

 /* Elimine el registro cuyo nombre sea "Juan" (1 registro afectado)

5- Elimine los registros cuyo número telefónico sea igual a "4545454" (2 registros afectados):

6- Muestre la tabla.

7- Elimine todos los registros (2 registros afectados):

8- Muestre la tabla.
*/
select *from agenda
delete from agenda where nombre='Juan'
delete from agenda where telefono='4545454'
select *from agenda 
delete from agenda
select *from agenda

/*----------- Actualizar registros (update)----------*/

if object_id('agenda') is not null
  drop table agenda;
  create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');


  /*4- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose" (1 registro afectado)

5- Actualice los registros cuyo número telefónico sea igual a "4545454" por "4445566" 
(2 registros afectados)

6- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose" (ningún 
registro afectado porque ninguno cumple con la condición del "where")

7 - Luego de cada actualización ejecute un select que muestre todos los registros de la tabla.*/
select *from agenda
update agenda set nombre='Juan jose' where nombre='Juan'

update agenda set telefono='4445566' where telefono='4545454'

update agenda set nombre='Juan jose' where nombre='Juan'
select *from agenda

/*--------------------------------------------------------------*/
 if object_id('Libros') is not null
  drop table Libros;
   if object_id('libros') is not null
  drop table libros;

  create table libros (
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );
 insert into libros (titulo, autor, editorial,precio)
  values ('El aleph','Borges','Emece',25.00);
 insert into libros (titulo, autor, editorial, precio)
  values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros (titulo, autor, editorial, precio)
  values ('Matematica estas ahi','Paenza','Siglo XXI',15);

  select * from libros;

  /* Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (1 registro 
afectado)
 

6- Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza" (ningún 
registro afectado porque ninguno cumple la condición)
 

7- Actualice el precio del libro de "Mario Molina" a 27 pesos (1 registro afectado):

8- Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya 
editorial sea igual a "Emece" (3 registros afectados):

9 - Luego de cada actualización ejecute un select que mustre todos los registros de la tabla.*/

update libros set autor='Adrian Paenza'

 update libros set autor='Adrian Paenza'
  where autor='Paenza';

  update libros set precio=27
 where autor='Mario Molina';

  update libros set editorial='Emece S.A.'
  where editorial='Emece'
  select  *from libros


  /*---------------Valores null (is null)-------------------*/
  object_id('medicamentos') is not null
   drop table medicamentos;

   create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );
 exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

  select * from medicamentos;

  insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

  insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);
   select * from medicamentos;

    /*insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);*/

  select *from medicamentos where laboratorio is null 
  select * from medicamentos;
  select *from medicamentos where laboratorio =''
  select * from medicamentos;
  select *from medicamentos where precio is null
  select * from medicamentos;
  select *from medicamentos where precio=0
  select * from medicamentos;
   select * from medicamentos
  where laboratorio<>'';
select * from medicamentos
 select * from medicamentos
  where laboratorio is not null;
  select * from medicamentos
 select * from medicamentos
  where precio<>0;
  select * from medicamentos
 select * from medicamentos
  where precio is not null;
  select * from medicamentos

   if object_id('peliculas') is not null
  drop table peliculas;
  
 create table peliculas(
  codigo int not null,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion int
 );
 insert into peliculas (codigo,titulo,actor,duracion)
  values(1,'Mision imposible','Tom Cruise',120);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(2,'Harry Potter y la piedra filosofal',null,180);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(3,'Harry Potter y la camara secreta','Daniel R.',null);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(0,'Mision imposible 2','',150);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(4,'','L. Di Caprio',220);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(5,'Mujer bonita','R. Gere-J. Roberts',0);

   select * from peliculas;

    /*7- Muestre los registros con valor nulo en el campo "actor" y luego los que guardan una cadena vacía 
(note que la salida es distinta) (1 registro)

8- Modifique los registros que tengan valor de duración desconocido (nulo) por "120" (1 registro 
actualizado)

9- Coloque 'Desconocido' en el campo "actor" en los registros que tengan una cadena vacía en dicho 
campo (1 registro afectado)

10- Muestre todos los registros. Note que el cambio anterior no afectó a los registros con valor 
nulo en el campo "actor".

11- Elimine los registros cuyo título sea una cadena vacía (1 registro)*/

 select * from peliculas
  where actor is null;

 update peliculas set duracion=120 where duracion is null;

 update peliculas set actor='Desconocido'
  where actor='';

 select * from peliculas;

 delete from peliculas
  where titulo='';

 select * from peliculas;

 /*- Clave primaria*/

  if object_id('libros') is not null
  drop table libros;
   create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );
  insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 
  

 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=1
  where titulo='Martin Fierro';


  /* -----------------Campo con atributo Identity-------------*/

   if object_id('medicamentos') is not null
  drop table medicamentos;
   create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );
  insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos(nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 select * from medicamentos;

 /* Elimine el registro con codigo "3" */
 delete from medicamentos where codigo=3
 select * from medicamentos;
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);
   select * from medicamentos;

   /*------------------------ Otras características del atributo Identity------------------------------*/

   if object_id('medicamentos') is not null
  drop table medicamentos;
  create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

  select *from medicamentos;
  /*Setee la opción "identity_insert" en "on"*/
  set identity_insert medicamentos on;

  insert into medicamentos(nombre,laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100)
  /*Ingrese un nuevo registro con valor para el campo "codigo" repetido.*/
   insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(10,'Buscapina','Roche',4.10,200);
  /*Use la función "ident_seed()" para averiguar el valor de inicio del campo "identity" de la tabla 
"medicamentos"*/
select ident_seed('medicamentos');
/*mplee la función "ident_incr()" para saber cuál es el valor de incremento del campo "identity" 
de "medicamentos"*/
select ident_incr('medicamnetos');
set identity_insert medicamentos off;
/*Segundo problema*/

if object_id('peliculas') is not null
  drop table peliculas;
   create table peliculas(
  codigo int identity (50,3),
  titulo varchar(40),
  actor varchar(20),
  duracion int
 );
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);

  select *from peliculas;
  set identity_insert peliculas on 
  /*Ingrese un registro con valor de código menor a 50.*/
  insert into peliculas (codigo ,titulo,actor,duracion)
  values(35,'Harry Potter','Daniel R.',190);
  /*- Ingrese un registro con valor de código mayor al último generado.*/
   insert into peliculas (codigo, titulo,actor,duracion)
  values(80,'rapido y furioso','vin diesel',180);
  /*Averigue el valor de inicio del campo "identity" de la tabla "peliculas".*/

 select ident_seed('peliculas');
   /*Averigue el valor de incremento del campo "identity" de "peliculas".*/
 select ident_incr('peliculas');
 /*Intente ingresar un registro sin valor para el campo código.*/
 insert into peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',90);

 set identity_insert peliculas off; 

 insert into peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',90);
 
 select * from peliculas;


 /*==============15 - Truncate table==============*/
 if object_id('alumnos') is not null
  drop table alumnos;
  create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );
 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');

  /*========== Elimine todos los registros con "delete".================*/
  select *from agenda
  delete from alumnos
  select *from agenda
  /*Elimine todos los registros con "truncate table".*/
  insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;

 truncate table alumnos;
 /*--------------------------------------------------*/
 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;
 /*==========================Tipo de dato (texto)====================*/
  if object_id('autos') is not null
  drop table autos;
  create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );
  insert into autos (patente,marca,modelo,precio)
  values('ACD123','Fiat 128','1970',15000);
 insert into autos (patente,marca,modelo,precio)
  values('ACG234','Renault 11','1990',40000);
 insert into autos (patente,marca,modelo,precio)
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos (patente,marca,modelo,precio)
  values('GCD123','Renault Clio','1990',70000);
 insert into autos (patente,marca,modelo,precio)
  values('BCC333','Renault Megane','1998',95000);
 insert into autos (patente,marca,modelo,precio)
  values('BVF543','Fiat 128','1975',20000);

  /* Seleccione todos los autos del año 1990*/
  select *from autos where modelo=1990

  /*============Segundo problema:==============*/

   if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  documento char(8),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar (11)
 );

 insert into clientes
  values('2233344','Perez','Juan','Sarmiento 980','4342345');
 insert into clientes (documento,apellido,nombre,domicilio)
  values('2333344','Perez','Ana','Colon 234');
 insert into clientes
  values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
 insert into clientes
  values('2533344','Juarez','Ana','Urquiza 444','4789900');

 select * from clientes
  where apellido='Perez';

  /*=========Tipo de dato (numérico)=============*/
   if object_id('cuentas') is not null
  drop table cuentas;

  /*- Número de cuenta: entero, no nulo, no puede haber valores repetidos, clave primaria;
 - Documento del propietario de la cuenta: cadena de caracteres de 8 de longitud (siempre 8), no nulo;
 - Nombre del propietario de la cuenta: cadena de caracteres de 30 de longitud,
 - Saldo de la cuenta: valores altos con decimales.*/
  create table cuentas (numero integer not null,
  documento char(8),
  nombre varchar(30),
  saldo money,
  primary key(numero)
  );

  
   insert into cuentas(numero,documento,nombre,saldo)
  values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(numero,documento,nombre,saldo)
  values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3346','32111222','Susana Molina',1000);
  /*eleccione todos los registros cuyo saldo sea mayor a "4000"*/
  select *from cuentas where saldo>4000
  /* Muestre el número de cuenta y saldo de todas las cuentas cuyo propietario sea "Juan Lopez"*/
  select numero, saldo from cuentas where nombre='Juan Lopez '
  /*Muestre las cuentas con saldo negativo*/
   select * from cuentas where saldo<0;
   /*uestre todas las cuentas cuyo número es igual o mayor a "3000*/
select * from cuentas where numero>=3000;

/*Segundo problema:*/
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),
  cantidadhijos tinyint--no superará los 255
 );

 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Ana Acosta','24555666','f','Colon 134',850,0);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
 values ('Susana Molina','29000555','f','Salta 876',800.888,3);

 --insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  --values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

 select * from empleados
  where sueldobasico>=900;

 select * from empleados
  where cantidadhijos>0;


  ------------------ - Tipo de dato (fecha y hora) ----------------------

   if object_id('alumnos') is not null
  drop table alumnos;

  create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

 --Setee el formato para entrada de datos de tipo fecha para que acepte valores "día-mes-año"

 set dateformat 'dmy';

 --Ingrese un alumno empleando distintos separadores para las fechas:
 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
--Ingrese otro alumno empleando solamente un dígito para día y mes y 2 para el año:
 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
--Ingrese un alumnos empleando 2 dígitos para el año de la fecha de ingreso y "null" en "fechanacimiento":
 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 --Muestre todos los alumnos que ingresaron antes del '1-1-91'.

 select *from alumnos where fechaingreso < '1-1-91'
 --Muestre todos los alumnos que tienen "null" en "fechanacimiento":
 select *from alumnos where fechanacimiento is null;
 --Setee el formato de entrada de fechas para que acepte valores "mes-dia-año".
set dateformat 'mdy';
--Intente ingresar un alumno con fecha de ingreso correspondiente a "15 de marzo de 1990" pero en 

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);


 -------------------Ingresar algunos campos (insert into)
 if object_id('cuentas') is not null
  drop table cuentas;
  create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );
 -- Ingrese un registro con valores para todos sus campos omitiendo la lista de campos (excepto el campo "identity"):
 insert into cuentas values ('25666777','Juan Perez',2500.50);
 --Ingrese un registro omitiendo algún campo que admitan valores nulos.
  insert into cuentas (documento,saldo)values ('25666777',2500.50);
  select * from cuentas;

  --Valores por defecto (default)

if object_id('visitantes') is not null
  drop table visitantes;
  create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );
 insert into visitantes (nombre, domicilio, montocompra)
  values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select * from visitantes;
 --Use la palabra "default" para ingresar valores en un insert.
 insert into visitantes (nombre,edad,sexo ,domicilio, montocompra)
  values ('lisbeth', 15, default,'Colon 123',59.80);
  
  
 insert into visitantes default values;
select * from visitantes;

-------------Segundo problema:
 
 if object_id('prestamos') is not null
  drop table prestamos;
create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo datetime not null,
  fechadevolucion datetime,
  devuelto char(1) default 'n'
 );
  insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo)
  values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto)
  values ('Manual de geografia 5 grado','25555666','2006-12-18','s');
select * from prestamos;

 insert into prestamos
  values('Manual de historia','32555666','2006-10-25',default,default);

--Columnas calculadas (operadores aritméticos y de concatenación)
 if object_id ('articulos') is not null
  drop table articulos;
create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);
 select * from articulos;
--El comercio quiere aumentar los precios de todos sus artículos en un 15%. Actualice todos los 
--precios empleando operadores aritméticos.
update articulos set precio=precio+(precio*0.15)
 select * from articulos;

 --Muestre todos los artículos, concatenando el nombre y la descripción de cada uno de ellos 
--separados por coma.
 select nombre+','+descripcion
  from articulos;
 --Reste a la cantidad de todos los teclados, el valor 5, empleando el operador aritmético menos ("-")
 update articulos set cantidad=cantidad-5
 where nombre='teclado';


 select * from articulos;

 --------------------- Alias
 if object_id ('libros') is not null
  drop table libros;

create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );
 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);
 select *from libros
 /*Muestre todos los campos de los libros y un campo extra, con el encabezado "monto total" en la 
que calcule el monto total en dinero de cada libro (precio por cantidad)*/
  select titulo, autor,editorial,precio,cantidad,precio*cantidad 
  as 'monto total' from libros;
  select *from libros
  /*Muestre el título, autor y precio de todos los libros de editorial "Emece" y agregue dos columnas 
extra en las cuales muestre el descuento de cada libro, con el encabezado "descuento" y el precio 
con un 10% de descuento con el encabezado "precio final".*/

 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros where editorial='Emece';
  select *from libros
  --Muestre una columna con el título y el autor concatenados con el encabezado "Título y autor"
select titulo+'-'+autor as "Título y autor" from libros;

select *from libros