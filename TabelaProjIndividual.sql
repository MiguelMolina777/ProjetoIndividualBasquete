CREATE DATABASE basquete;
use basquete;

CREATE TABLE jogador (
idJogador int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
estado char(2),
cidade varchar(45),
fkQuadra int,
foreign key (fkQuadra) references Quadra(idQuadra)
);

CREATE TABLE Quadra (
idQuadra int primary key auto_increment,
estado char(2),
cidade varchar(45),
endereco varchar(45)
);

insert into Quadra values 
(null, 'SP', 'São Caetano do Sul', 'Espaço Verde Chico Mendes');

insert into Jogador values
(null, 'Miguel', 'miguel@email.com', '123', 'SP', 'São Bernardo do Campo', 1);

select * from quadra 
join jogador on jogador.fkQuadra = Quadra.idQuadra; 