CREATE DATABASE NOMINA;
use NOMINA;
create table baseEmpleados(
codigoEmpleado int(50) not null primary key,
nombreEmpleado varchar(10)not null,
apellidoEmpleado varchar(10)not null,
sueldoEmpleado varchar(10)not null,
estadoEmpleado varchar(8)not null)ENGINE=INNODB;
create table bajasEmpleado(
codigoEmpleado int(50),
nombreEmpleado varchar(10),
apellidoEmpleado varchar(10),
sueldoEmpleado varchar(10),
estadoEmpleado varchar(8) not null,
FOREIGN KEY (codigoEmpleado) REFERENCES baseEmpleados(codigoEmpleado),
FOREIGN KEY (nombreEmpleado) REFERENCES nombreEmpleados(codigoEmpleado),
FOREIGN KEY (apellidoEmpleado) REFERENCES apellidoEmpleados(codigoEmpleado),
FOREIGN KEY (sueldoEmpleado) REFERENCES sueldoEmpleados(codigoEmpleado))ENGINE=INNODB;
CREATE TABLE chequesEmpleados(
codigocheques varchar (10) primary key,
nombreEmpleado varchar (10) not null,
apellidoEmpleado varchar (10) not null,
sueldoEmpleado varchar (10) not null,
estadoEmpleado varchar (8) not null,
foreign key (nombreEmpleado) references baseEmpleados(nombreEmpleado),
foreign key (apellidoEmpleado) references baseEmpleados(apellidoEmpleado),
foreign key (sueldoEmpleado) references baseEmpleados(sueldoEmpleado),
foreign key (estadoEmpleado) references baseEmpleados(sueldoEmpleado)
) Engine = INNODB;