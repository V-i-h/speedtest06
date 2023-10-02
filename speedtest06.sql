create database speedtest06;
use speedtest06;

/* Lógico_1: */

CREATE TABLE professor (
    nome VARCHAR(45),
    unidade INT UNIQUE,
    matricula INT PRIMARY KEY
);

CREATE TABLE aluno (
    nome INT,
    numero_aluno VARCHAR(45) PRIMARY KEY,
    ano INT,
    semestre DECIMAL,
    UNIQUE (ano, semestre)
);

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


select * from turma;


CREATE TABLE inscrito (
    fk_aluno_numero_aluno VARCHAR(45),
    fk_turma_cod_disciplina INT
);
 
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