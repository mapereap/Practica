DROP DATABASE proyecto_practica;
CREATE DATABASE proyecto_practica;
USE proyecto_practica;

CREATE TABLE `evento`(
id_evento  int  NOT NULL primary KEY,
administradores int,
coordinadores int, 
modificar int, 
registro int, 
ingreso int,
dependencia varchar(200) ,
contactenos int
 
);

create table `contactenos`(
id_contactenos  int not null primary key,
Nombre varchar (100),
apellidos varchar(100),
telefono long, 
correo varchar(100),
contactenos  varchar (200),
id_evento int,
key `id_evento`(`id_evento`),
CONSTRAINT  `contactenos_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

CREATE TABLE `asistentes`(
ind_asistentes int not null primary key,
nombre varchar(45), 
apellido varchar(45),
correo varchar(200),
telefono long, 
id_evento int,
tipo_de_espectador varchar(45),
hora time, 
key `id_evento`(`id_evento`),
CONSTRAINT  `asistentes1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
  

);

create table `administrador` (
id_administrador int not null primary key, 
nombre varchar(45),
coreo varchar(200), 
telefono long , 
ciudad varchar(45)

);


create table `coordinador` (
id_coordinador  int not null primary key, 
nombre varchar (90),
correo varchar (30),
telefono long, 
id_evento int, 
ciudad varchar (80), 
key `id_evento`(`id_evento`),
CONSTRAINT  `coordinador1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `registro de evento`(
id_evento  int not null primary key,
 nombre_del_evento int,
lugar varchar(145), 
fecha date, 
hora datetime,
descripción_del_evento varchar (300),
dependencia varchar(45),
key `id_evento`(`id_evento`),
CONSTRAINT  `registro de evento1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

create table `modificar`(
id_evento  int not null primary key,
key `id_evento`(`id_evento`),
CONSTRAINT  `registro de evento1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

DROP DATABASE proyecto_practica;
CREATE DATABASE proyecto_practica;
USE proyecto_practica;

CREATE TABLE `evento`(
id_evento  int  NOT NULL primary KEY,
administradores int,
coordinadores int, 
modificar int, 
registro int, 
ingreso int,
dependencia varchar(200) ,
contactenos int
 
);

create table `contactenos`(
id_contactenos  int not null primary key,
Nombre varchar (100),
apellidos varchar(100),
telefono long, 
correo varchar(100),
contactenos  varchar (200),
id_evento int,
key `id_evento`(`id_evento`),
CONSTRAINT  `contactenos_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

CREATE TABLE `asistentes`(
ind_asistentes int not null primary key,
nombre varchar(45), 
apellido varchar(45),
correo varchar(200),
telefono long, 
id_evento int,
tipo_de_espectador varchar(45),
hora time, 
key `id_evento`(`id_evento`),
CONSTRAINT  `asistentes1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
  

);

create table `administrador` (
id_administrador int not null primary key, 
nombre varchar(45),
coreo varchar(200), 
telefono long , 
ciudad varchar(45)

);


create table `coordinador` (
id_coordinador  int not null primary key, 
nombre varchar (90),
correo varchar (30),
telefono long, 
id_evento int, 
ciudad varchar (80), 
key `id_evento`(`id_evento`),
CONSTRAINT  `coordinador1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `registro de evento`(
id_evento  int not null primary key,
 nombre_del_evento int,
lugar varchar(145), 
fecha date, 
hora datetime,
descripción_del_evento varchar (300),
dependencia varchar(45),
key `id_evento`(`id_evento`),
CONSTRAINT  `registro de evento1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

create table `modificar`(
id_evento  int not null primary key,
key `id_evento`(`id_evento`),
CONSTRAINT  `registro de evento1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);














