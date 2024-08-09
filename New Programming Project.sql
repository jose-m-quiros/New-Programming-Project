create database NewProgrammingProject;
use NewProgrammingProject;
 
create table Usuario(
    cedula int primary key,
    nombre varchar(50) not null,
    telefono varchar(50),
    correo varchar(50)
);

SELECT * FROM Usuario;