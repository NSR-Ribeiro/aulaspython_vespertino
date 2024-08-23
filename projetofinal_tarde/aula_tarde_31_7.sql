-- DDL(Data Definition Language)
-- Linguagem de Definição de Dados

-- CREAT
-- DROP
-- ALTER

-- DML (Data Manipulação Language)
-- Linguagem de Manipulação de Dados

	-- INSERT
    -- UPDATE
    -- DELETE
    
-- DQL (Data Query Language)
 -- Linguagem de pesquisa de Dados
 
	-- SELECT
    -- WHERE
    -- FROM
    -- > < >= = AND



-- DCL (Data Control Language)

 -- Linguagem de Crontrole de Dados
 -- CRIAR USUÁRIOS
 -- Tarefas de ADMIN
 -- Grant
 -- Revoke


-- DTL (Data Transaction Language)
 -- Linguagem de Transação de Dados
 
 -- BEGIN TRAN (OU BEGIN TRANSACTION) - Marca p começo
 
 CREATE TABLE diariobordo (
 id int PRIMARY key auto_increment,
 texto text NOT NULL,
 datahora datetime NOT NULL,
 fk_aluno_id int NOT NULL
 );
 
 show tables;
 
 ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
 foreign key (fk_aluno_id
 REFERENCES aluno (id)
 ON DELETE CASCADA;
 
 
 
 -- DDL: CREAT DATABASE (criar um banco de dados)
 CREATE DATABASE schooltraker;
 USE schooltraker;
 SHOW tables;
 
 CREATE TABLE aluno (
    Id INT PRIMARY KEY auto_increment,
    ra CHAR(8) NOT NULL
);
-- Alterar tabela adicionando a contraint UNIQUE no ra.
ALTER TABLE aluno ADD CONSTRAINT constraint_name UNIQUE (ra);
DESCRIBE aluno;
-- Pesquisa todos os campos (*) da tabela aluno
SELECT * FROM aluno;
-- Pesquisa a coluna
SELECT id,ra FROM aluno WHERE id >=4;
-- DELETE registros da tabela aluno quando id = 4
DELETE FROM aluno WHERE id >0;
-- Mostrar toda a estrutura da tabela.
DESCRIBE aluno;

INSERT INTO aluno (ra) VALUES
('00034548'),
('00034549'),
('00034550'),
('00034551'),
('00034552'),
('00034553'),
('00034554'),
('00034555'),
('00034556'),
('00034557'),
('00034558'),
('00034559'),
('00034560'),
('00034561'),
('00034562'),
('00034563'),
('00034564'),
('00034565'),
('00034566'),
('00034567'),
('00034568'),
('00034569'),
('00034570'),
('00034571'),
('00034572'),
('00034573'),
('00034574'),
('00034575'),
('00034576'),
('00034577'),
('00034578'),
('00034579'),
('00034580'),
('00034581'),
('00034582'),
('00034583'),
('00034584'),
('00034585'),
('00034586'),
('00034587'),
('00034588'),
('00034589'),
('00034590'),
('00034591'),
('00034592'),
('00034593'),
('00034594'),
('00034595'),
('00034596'),
('00034597'),
('00034598'),
('00034599');




CREATE TABLE DiarioBordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime,
    fk_aluno_Id INT
);
 describe DiarioBordo;


SELECT * FROM diariobordo;

-- Mostrando de forma persinalizada
SELECT
d.id,
d.texto,
d.datahora,
a.ra as registro_academico
FROM
diariobordo as d
JOIN
aluno AS a
ON d.fk_aluno_id = a.id;

-- Exercício - Agora você deve inserir o diário de bordo da aula de hoje.
-- Qual o seu RA? Insira o seu RA no sistema e posteriormente crie
-- O seu diário de bordo.
-- Por último, faça um SELECT.alter-- Envie esse scrip para um novo repositório do github
-- Com o nome de projetofinal_tarde.
-- instrutor.romulo@gmail.com
-- Meu RA: 00025775

INSERT aluno(ra) VALUES('00025775');
SELECT *FROM aluno;
insert into diariobordo (texto,datahora,fk_aluno_Id)
values ('hoje eu aprendi usar  os comandos SQL para fazer inserção e alteração de dados em uma tabela, com uso de JOIN',24-07-31 17:57:00,55)
SELECT * FROM diariobordo;

 ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
 foreign key (fk_aluno_id)
 REFERENCES aluno (id)
 ON DELETE cascade;
 
 
-- Juntar (casar)
SELECT * FROM
diariobordo
JOIN
aluno
-- Consumação do casamento
ON diariobordo.fk_aluno_id = aluno.id;




    
    SHOW tables;
    
     insert into diariobordo (texto,datahora,fk_aluno_Id)values ('esse aqui é o texto','2024-07-31','3')
     
    
 
-- Mostrando todos da tabela diário de bordo
-- Desafio
-- Com ou sem GPT faça um insert na tabela diariobordo (aluno existente)
    
-- Exercício
-- modelo Conceitual - crie uma nova entidade chamada avaliação.
-- id pk
-- nota1 int
-- nota2 int
-- nota3 int
-- nota4 int

drop table avaliacao_de_alunos;
CREATE TABLE avaliacao_de_alunos (
    nota1 INT,
    nota2 INT,
    nota3 INT,
    nota4 INT,
    id_pk INT PRIMARY KEY auto_increment,
    id_aluno int
);

 ALTER TABLE avaliacao_de_alunos ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (id_aluno)
    REFERENCES aluno (Id)
    ON DELETE CASCADE;

describe avaliacao_de_alunos;
 
ALTER TABLE registra_diariobordo_aluno_avaliacao_de_alunos ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_de_alunos_1
    FOREIGN KEY (fk_diariobordo_id)
    REFERENCES diariobordo (id)
    ON DELETE NO ACTION;
 
ALTER TABLE registra_diariobordo_aluno_avaliacao_de_alunos ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_de_alunos_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;
 
ALTER TABLE registra_diariobordo_aluno_avaliacao_de_alunos ADD CONSTRAINT FK_registra_diariobordo_aluno_avaliacao_de_alunos_3
    FOREIGN KEY (fk_avaliacao_de_alunos_id_pk)
    REFERENCES avaliacao_de_alunos (id_pk)
    ON DELETE NO ACTION;
     
     
SELECT * FROM avaliacao_de_alunos as av
join aluno al
on al.id=av.id_aluno;

INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('15','10','20','12','2');
INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('20','16','22','10','4');
INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('25','20','10','25','7');
INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('14','17','23','22','10');
INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('19','25','20','12','52');
INSERT avaliacao_de_alunos(nota1,nota2,nota3,nota4,id_aluno) VALUES ('15','10','20','25','12');

    
select * from aluno;
 
 
 
    
 
 
 