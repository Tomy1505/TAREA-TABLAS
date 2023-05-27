create database tablas;
use tablas;
create table aprendiz(
id int primary key auto_increment not null,
documentoa int not null,
nombrea varchar(40) not null, 
apellidoa varchar(40) not null,   
emaila varchar(30) not null,
telefonoa int not null
);
create table programa(
codprograma int primary key not null,
nomprograma varchar(40) not null
);
create table ficha(
codficha int primary key not null,
cantapre int not null,
codprog int not null,
codapre int not null,
FOREIGN KEY (codprog) REFERENCES programa(codprograma),
FOREIGN KEY (codapre) REFERENCES aprendiz(id));