--O primeiro passo é definir a estrutura do banco de dados, criando tabelas para armazenar informações específicas.
CREATE TABLE tabelaalunos (
 id_aluno int PRIMARY KEY,
 nome_aluno varchar(50),
 data_nascimento date,
 genero varchar(50),
 endereco text(250),
 telefone_contato int,
 email text(250)
);
  
  
create TABLE tabelaprofessores (
 id_professor int PRIMARY KEY,
 nome_professor varchar(50),
 data_nascimento date,
 genero varchar(50),
 endereco text(250),
 telefone_contato int,
 email text(250)
);
  
  
CREATE TABLE tabeladisciplinas (
 id_disciplina int PRIMARY key,
 nome_disciplina varchar(50),
 descricao text(250),
 carga_horaria int,
 id_professor int,
 FOREIGN KEY (id_professor) REFERENCES tabelaprofessores (id_professor)
);
  
  
CREATE table turmadisciplinas (
 id_turma INT,
 id_disciplina INT,
 FOREIGN key (id_turma) references tabelaturmas (id_turma),
 FOREIGN Key (id_disciplina) REFERENCES tabeladisciplinas (id_disciplina)
);


CREATE table turmaalunos (
 id_turma INT,
 id_alunos INT,
 FOREIGN key (id_turma) references tabelaturmas (id_turma),
 FOREIGN Key (id_alunos) REFERENCES tabelaalunos (id_aluno)
);


CREATE TABLE tabelanotas (
 id_nota int PRIMARY key,
 id_aluno int,
 id_disciplina int,
 valor_nota float,
 data_avaliacao date,
 FOREIGN KEY (id_disciplina) REFERENCES tabeladisciplinas (id_disciplina),
 FOREIGN KEY (id_aluno) REFERENCES tabelaalunos (id_aluno)
);


--Depois de criar as tabelas, é hora de inserir os dados.
INSERT INTO tabelaalunos (
 id_aluno,
 nome_aluno,
 data_nascimento,
 genero,
 endereco,
 telefone_contato,
 email)
VALUES
 (1, 'João Silva', '2005-03-15', 'Masculino', 'Rua das Flores, 123', 1198765432, 'joao@email.com'),
 (2, 'Maria Santos', '2006-06-20', 'Feminino', 'Avenida Principal, 456', 1187654321, 'maria@email.com'),
 (3, 'Pedro Soares','2004-01-10', 'Masculino', 'Rua Central, 789', 1176543210, 'pedro@email.com'),
 (4, 'Ana Lima', '2005-04-02', 'Feminino', 'Rua da Escola, 56', 1187654321, 'ana@email.com'),
 (5, 'Mariana Fernandes', '2005-08-12', 'Feminino', 'Avenida da Paz, 789', 1156781234, 'mariana@email.com'),
 (6, 'Lucas Costa', '2003-11-25', 'Masculino', 'Rua Principal, 456', 1112345678, 'lucas@email.com'),
 (7, 'Isabela Santos', '2006-09-10', 'Feminino', 'Rua da Amizade, 789', 1198765432, 'isabela@email.com'),
 (8, 'Gustavo Pereira', '2004-05-15', 'Masculino', 'Avenida dos Sonhos, 123', 1176543210, 'gustavo@email.com'),
 (9, 'Carolina Oliveira', '2005-02-20', 'Feminino', 'Rua da Alegria, 456', 1187654321, 'carolina@email.com'),
 (10, 'Daniel Silva', '2003-10-05', 'Masculino', 'Avenida Central, 789', 1112345678, 'daniel@email.com'),
 (11, 'Larissa Souza', '2004-12-08', 'Feminino', 'Rua da Felicidade, 123', 1198765432, 'larissa@email.com'),
 (12, 'Bruno Costa', '2005-07-30', 'Masculino', 'Avenida Principal, 456',1176543210, 'bruno@email.com'),
 (13, 'Camila Rodrigues', '2006-03-22', 'Feminino', 'Rua das Estrelas, 789',1187654321, 'camila@email.com'),
 (14, 'Rafael Fernandes', '2004-11-18', 'Masculino', 'Avenida dos Sonhos, 123', 111234-5678, 'rafael@email'),
 (15, 'Letícia Oliveira', '2005-01-05', 'Feminino', 'Rua da Alegria, 456', 1198765432, 'leticia@gmail.com'),
 (16, 'Fernanda Lima', '2004-02-12', 'Feminino', 'Rua da Esperança, 789', 1145678901, 'fernanda@gmail.com'),
 (17, 'Vinisius Santos', '2003-07-27', 'Masculino', 'Avenida da Amizade, 123', 1189012345, 'vinicius@gmail.com'),
 (18, 'Juliana Pereira', '2006-09-01', 'Feminino', 'Rua das Rosas, 789', 1134567890, 'juliana@gmail.com');
  
  
INSERT INTO tabeladisciplinas (
 id_disciplina,
 nome_disciplina,
 descricao,
 carga_horaria,
 id_professor)
 VALUES
 (1, 'Matematica', 'Estudos de Conceitos Matematicos Avançcados', 60, 1),
 (2, 'Historia', 'Historia Mundial e Local', 45, 2),
 (3, 'Fisica', 'Principios Fundamentais da Fisica', 60, 1),
 (4, 'Quimica', 'Estudo da Quimica e suas Aplicações', 45, 3),
 (5, 'Inglês', 'Estudos de Conceitos Matematicos AvançcadoAula de Inglês para Iniciantes', 45, 4),
 (6, 'Artes', 'Exploração da Criatividade Artistica', 30, 5);

 
INSERT INTO tabelanotas (
 id_nota,
 id_disciplina,
 id_aluno,
 valor_nota,
 data_avaliacao) 
VALUES 
 (1, 1, 1, 6.19, '07/07/2023'), 
 (2, 1, 2, 7.18, '07/07/2023'), 
 (3, 1, 3, 7.47, '07/07/2023'), 
 (4, 1, 4, 7.46, '07/07/2023'), 
 (5, 1, 5, 4.35, '07/07/2023'), 
 (6, 1, 6, 4.43, '07/07/2023'), 
 (7, 1, 7, 0.76, '07/07/2023'), 
 (8, 1, 8, 9.22,'07/07/2023'), 
 (9, 1, 9, 9.4, '07/07/2023'), 
 (10, 1, 10, 3.28, '07/07/2023'), 
 (11, 2, 11, 1.34, '09/07/2023'), 
 (12, 2, 12, 03.01, '09/07/2023'), 
 (13, 2, 13, 1.66, '09/07/2023'), 
 (14, 2, 14, 0.03, '09/07/2023'), 
 (15, 2, 15, 4.34, '09/07/2023'), 
 (16, 2, 16, 04.02, '09/07/2023'), 
 (17, 2, 17, 8.79, '09/07/2023'), 
 (18, 2, 18, 1.17, '09/07/2023');
 

INSERT INTO tabelaprofessores (
 id_professor,
 nome_professor,
 data_nascimento,
 genero,
 telefone_contato,
 email)
VALUES  
 (1, 'Ana Oliveira', '1980-05-25', 'Feminino', 1112345678, 'ana@email.com'), 
 (2, 'Carlos Ferreira', '1975-09-12', 'Masculino', 1123456789, 'carlos@email.com'), 
 (3, 'Mariana Santos', '1982-03-15', 'Feminino', 1134567890, 'mariana@email.com'), 
 (4, 'Ricardo Silva', '1978-08-20', 'Masculino', 1178901234, 'ricardo@email.com'), 
 (5, 'Fernanda Lima', '1985-01-30', 'Feminino', 1145678901, 'fernanda@email.com');
 
 
insert into turmaalunos (
 id_turma,
 id_alunos)
VALUES
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 4),
 (5, 5),
 (1, 6),
 (2, 7),
 (3, 8),
 (4, 9),
 (5, 10);
 
 
INSERT into turmadisciplinas (
 id_turma,
 id_disciplina)
VALUES
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 4),
 (5, 5),
 (1, 3),
 (2, 1),
 (3, 2);


--Consulta 1: Executar consultas para verificar se os dados foram importados corretamente em todas as tabelas.
SELECT * FROM tabelaalunos;

SELECT * FROM tabeladisciplinas;

SELECT * FROM tabelanotas;

SELECT * FROM tabelaprofessores;

SELECT * From turmaalunos;

Select * From turmadisciplinas;


-- Consulta 2: Retorne as informações de todos os alunos ordenados pelo nome.
SELECT * FROM tabelaalunos order BY nome_aluno;


--Consulta 3: Retornar a disciplina que possui a carga horaria maior que 40.
Select nome_disciplina FROM tabeladisciplinas WHERE carga_horaria > 40; 


--Consulta 4: Buscar as notas que são maiores que 6 e menores que 8.
SELECT valor_nota from tabelanotas where valor_nota BETWEEN 6 and 8;