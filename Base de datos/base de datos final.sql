DROP DATABASE proyecto_practica;
CREATE DATABASE proyecto_practica;
USE proyecto_practica;

CREATE TABLE `evento`(
id_evento  int  NOT NULL primary KEY,
administradores int,
coordinadores int,  
registro int, 
contactenos int
 
);
create table `lugar`(
id_lugar int,
nombre varchar(45),
capacidad int,
modovirtual time, 
id_evento int, 
key `id_evento`(`id_evento`),
CONSTRAINT  `lugar_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `contactenos`(
id_contactenos  int not null primary key,
Nombre varchar (100),
telefono long, 
correo varchar(100),
id_evento int,
key `id_evento`(`id_evento`),
CONSTRAINT  `contactenos_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);

CREATE TABLE `asistentes`(
id_asistentes int not null primary key,
nombre varchar(45), 
correo varchar(200),
telefono long, 
id_evento int,
tipo_de_espectador varchar(45),
key `id_evento`(`id_evento`),
CONSTRAINT  `asistentes1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
);

create table `administrador` (
id_asistentes int not null primary key,  
contraseña varchar(45),
id_evento int, 
key `id_asistentes`(`id_asistentes`),
constraint `administrador1_ibfk_1` FOREIGN KEY (`id_asistentes`) REFERENCES `asistentes` (`id_asistentes`),
key `id_evento`(`id_evento`),
CONSTRAINT  `adnimistrador2_ibfk_2`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `coordinador` (
 id_asistentes  int not null primary key, 
contraseña varchar(45), 
id_evento int, 
key `id_evento`(`id_evento`),
key `id_asistentes`(`id_asistentes`),
constraint `coordiandor1_ibfk_1` FOREIGN KEY (`id_asistentes`) REFERENCES `asistentes` (`id_asistentes`),
CONSTRAINT  `coordinador2_ibfk_2`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `registro de evento`(
id_evento  int not null primary key,
 nombre_del_evento int,
fecha date, 
hora datetime,
descripción_del_evento varchar (300),
dependencia varchar(45),
key `id_evento`(`id_evento`),
CONSTRAINT  `registro de evento1_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)

);


create table `QRlist`(
id_evento int, 
id_asistentes int, 
QR blob(255), 
key `id_evento`(`id_evento`),
CONSTRAINT  `QRlist_ibfk_1`  FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`),
key `id_asistentes`(`id_asistentes`),
CONSTRAINT  `QRlist2_ibfk_2`  FOREIGN KEY (`id_asistentes`) REFERENCES `asistentes` (`id_asistentes`)

);

insert into `registro de evento` VALUES (01,`bases de datos`, '2019-04-04', '13:30:00','la profe mahecha ', 'bienestar');
INSERT INTO `asistentes` VALUES (1, 'MIGUEL ANGEL sanchez ','miguel@hotmail.com' , 321689097,01,'profesor');