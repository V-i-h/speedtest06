create database speedtest06;
use speedtest06;

/* Lógico_1: */

CREATE TABLE professor (
    nome VARCHAR(45),
    unidade varchar(50),
    matricula INT PRIMARY KEY
);
select * from professor;

insert into professor(nome,unidade,matricula) values
('Camilla Monteiro', 'SENAI-TAGUATINGA DF','555323');
insert into professor(nome,unidade,matricula) values
('Vanessa Silva', 'SENAI-TAGUATINGA DF','555321');
 drop table professor;
 

CREATE TABLE aluno (
    nome VARCHAR(45),
    numero_aluno INT,
    ano INT,
    semestre DECIMAL
);

drop table aluno;

insert into aluno(nome,numero_aluno,ano,semestre) values
('Luiz Borges','1','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Mel Paulínia','2','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Maria Zilda','3','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Fernando Cervantes','4','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Inácio Azevedo Jr','5','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Cleuza Azevedo','6','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Elizabeth Neila ','7','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Jairo Jonathas ','8','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Jeniffer Barros ','9','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Laila Mendes','10','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Emiliano Gabriel','11','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Sérgio Murilo','12','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Adriano Nilo ','13','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Helena Ávila ','14','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Flávio Ferminiano ','15','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Décio Humberto ','16','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Norma Bella ','17','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Caroline Terezinha','18','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Dara Azevedo','19','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Rosângela Telma','20','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Kiara Otávia','21','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Adriana Barros','22','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Emanuel Jorge','23','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Amarildo Kevin','24','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Ricardo Faro','25','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('David Correia','26','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Carla Eulália','27','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Poliana Samanta','28','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Eliane Karina','29','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Matilde Vívian','30','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Cristóvão Chico ','31','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Simon Otaviano ','32','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Ariel Núbia','33','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Mateus João','34','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Ismael Nicolau','35','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Malena Franco','36','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Túlio Cortês','37','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Ivete Yeda','38','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Eduardo Mascarenhas','39','2023','2');
insert into aluno(nome,numero_aluno,ano,semestre) values
('Laura Ávila','40','2023','2');
update aluno set ano= 2023;

SELECT * FROM aluno;

CREATE TABLE turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    num_turma INT UNIQUE,
    fk_professor_matricula INT,
    nome_disciplina VARCHAR(30)
);

insert into turma(sala,num_turma,fk_professor_matricula,nome_disciplina)
values ('202','1','90568','Fisica');
insert into turma (sala,num_turma,fk_professor_matricula,nome_disciplina)
values ('203','2','95681','Quimica');
insert into turma (sala,num_turma,fk_professor_matricula,nome_disciplina)
values ('204','3','95682','Matemática');


truncate table turma;
drop table turma;

update turma set sala = 206 where cod_disciplina =1;
select * from turma;



CREATE TABLE inscrito (
    fk_aluno_numero_aluno VARCHAR(45),
    fk_turma_cod_disciplina INT
);

select * from inscrito;
insert into inscrito (fk_Aluno_numero_aluno, fk_Turma_cod_disciplina)
values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),
(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1);

insert into inscrito (fk_Aluno_numero_aluno, fk_turma_cod_disciplina)
values(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2)
 ,(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2);
 

 select nome, numero_aluno 
 from aluno order by nome;
 
  select nome
 from aluno order by nome;

ALTER TABLE turma ADD CONSTRAINT FK_turma_2
    FOREIGN KEY (fk_professor_matricula)
    REFERENCES professor (matricula)
    ON DELETE CASCADE;
 
ALTER TABLE inscrito ADD CONSTRAINT FK_inscrito_1
    FOREIGN KEY (fk_aluno_numero_aluno)
    REFERENCES aluno (numero_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE inscrito ADD CONSTRAINT FK_inscrito_2
    FOREIGN KEY (fk_turma_cod_disciplina)
    REFERENCES turma (cod_disciplina)
    ON DELETE SET NULL;