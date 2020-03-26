CREATE DATABASE NOMINA;
use Nomina;
use Nomina;
create table baseEmpleados(
codigoEmpleado int(50) not null primary key,
nombreEmpleado varchar(10)not null,
apellidoEmpleado varchar(10)not null,
sueldoEmpleado varchar(10)not null,
estadoEmpleado varchar(8)not null)ENGINE=INNODB;
create table	 altasempleado
(
codigoEmpleado int(50),
nombreEmpleado varchar(10),
apellidoEmpleado varchar(10),
sueldoEmpleado varchar(10),
estadoEmpleado varchar(8)not null,
foreign key (codigoEmpleado) references baseEmpleados(codigoEmpleado),
foreign key (nombreEmpleado) references baseEmpleados(codigoEmpleado),
foreign key (apellidoEmpleado) references baseEmpleados(codigoEmpleado),
foreign key (sueldoEmpleado) references baseEmpleados(codigoEmpleado))ENGINE=INNODB;
