CREATE DATABASE basquete;
use basquete;

CREATE TABLE Quadra (
idQuadra int primary key auto_increment,
estado char(2),
cidade varchar(45),
endereco varchar(45)
);

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkQuadra int,
foreign key (fkQuadra) references Quadra(idQuadra),
senha varchar(45)
);

insert into Quadra values 
(null, 'SP', 'São Caetano do Sul', 'Espaço Verde Chico Mendes');

insert into usuario values
(null, 'Miguel', 'miguel@email.com', 1, '123');

select * from quadra 
join usuario on usuario.fkQuadra = Quadra.idQuadra; 