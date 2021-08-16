create database CitasMedicas

create table Pacientes(
Id_Paciente int identity primary key,
Nombre varchar(50),
Apellido varchar(50),
telefono varchar(50),
edad varchar(10),
correo varchar(50),
Direccion varchar(50),
);
create table Doctor(
Id_Doctor int identity primary key,
Nombre varchar(50),
Apellido varchar(50),
Edad varchar(50),
Telefono varchar(50),
Correo varchar(50),
clave varchar(75) not null,
Direccion varchar(50),
Nickname varchar(50) not null,
Rol varchar(50),
);

create table Secretaria(
Id_Secretaria int identity primary key,
Nombre varchar(50),
Apellido varchar(50),
Edad varchar(50),
Telefono varchar(50),
Correo varchar(50),
clave varchar(75) not null,
Direccion varchar(50),
Nickname varchar(50) not null,
Rol varchar(50),

);

create table Citas(
Id_Cita int identity primary key,
Hora_inicio smalldatetime,
Hora_fin smalldatetime,
fk_paciente int foreign key references Pacientes(Id_Paciente),
fk_doctor int foreign key references Doctor(Id_Doctor),
fk_secretaria int foreign key references Secretaria(Id_Secretaria),
Estado varchar(50),
Descripcion varchar(100),

);
insert into Pacientes(Nombre,Apellido,correo,edad,telefono,Direccion) values('Sanji','Vinsmoke','ladysSwan@gmail.com','20','809762345','Bartie')
insert into Pacientes(Nombre,Apellido,correo,edad,telefono,Direccion) values('Zoro','Roronoa','Kuina@gmail.com','21','802943126','romance dawn')
insert into Pacientes(Nombre,Apellido,correo,edad,telefono,Direccion) values('Luffy','MonkeyD','Dendenmushi@gmail.com','19','809765432','romance dawn')

insert into Doctor(Nombre,Apellido,Telefono,Direccion,Edad,Correo,Nickname,Rol,clave) values('Boa','Hancock','8741231234','Amazon Lily','30','LuffySugoi@gmail.com','BoaSwan','Doctor','luffylove12')
insert into Doctor(Nombre,Apellido,Telefono,Direccion,Edad,Correo,Nickname,Rol,clave) values('Rayleigh','Silvers','874874534','Shambondy Lake','70','Apuestas@gmail.com','Silvers','Doctor','raftael')
