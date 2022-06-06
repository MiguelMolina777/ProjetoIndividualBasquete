CREATE DATABASE basquete;
use basquete;

CREATE TABLE jogador (
idJogador int primary key auto_increment,
nome varchar(20),
equipe varchar(45)
);

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkJogador int,
foreign key (fkJogador) references Jogador(idJogador),
senha varchar(45)
);

insert into Jogador values 
(null, 'Lebron James', 'Cleveland Cavaliers'),
(null, 'Michael Jordan', 'Chicago Bulls');

insert into usuario values
(null, 'Miguel', 'miguel@email.com', 1, '123');

select * from Jogador 
join usuario on usuario.fkJogador = Jogador.idJogador; 

