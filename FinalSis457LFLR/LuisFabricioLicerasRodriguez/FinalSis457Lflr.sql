create database FinalSis457Lflr;

use [master]
go
create login [usrfinal] with password=N'12345678',
	default_database=[FinalSis457Lflr],
	check_expiration=off,
	check_policy=on
go
use [FinalSis457Lflr]
go
create user [usrfinal] for login [usrfinal]
go
alter role [db_owner] add member [usrfinal]

create table Serie(
	id int identity(1,1) primary key,
	titulo varchar(250),
	sinopsis varchar(5000),
	director varchar(100),
	duracion int,
	fechaEstreno date,
	usuarioRegistro varchar(12) default suser_sname(),
	registroActivo bit
);

create table Usuario(
	id int identity(1,1) primary key,
	usuario varchar(12),
	clave varchar(250),
	rol varchar(20),
	registroActivo bit
);

use FinalSis457Lflr;

insert into Usuario values('Luis', 'liceras', 'programador', 1);
insert into Usuario values('usrfinal', 'examen', 'diseñador', 1);

use FinalSis457Lflr;

insert into Serie values('Avatar','La historia de los Navis tratando de salvar su mundo', 'James Cameron', 180, '08-12-2022','',1);
insert into Serie values('Top Gun','Pelicula sobre pilotos', 'Tom Cruise', 120, '12-08-2022','',1);
insert into Serie values('La leyenda de Aang','El avatar ha vuelto despues de 100 años para salvar el mundo', 'Michael Dante', 30, '12-07-2008', '',1)