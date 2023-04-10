CREATE DATABASE db_curso_da_minha_vida;
USE  db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar (255) not null,
periodo varchar (255) not null,
primary key (id)
);

INSERT INTO tb_categorias(tipo, periodo)
VALUE ("Bacharelado","Manhã");
INSERT INTO tb_categorias(tipo, periodo)
VALUE ("Bacharelado","Tarde");
INSERT INTO tb_categorias(tipo, periodo)
VALUE ("Bacharelado" , "Noite");
INSERT INTO tb_categorias(tipo, periodo)
VALUE ("Tecnólogo" , "Manhã");
INSERT INTO tb_categorias(tipo, periodo)
VALUE ("Tecnólogo" , "Manhã");

SELECT * FROM tb_categorias;


CREATE TABLE  tb_cursos ( 
Id bigint auto_increment, 
nome varchar (255) not null,
preco decimal (6,2) not null,
duracao varchar (255) not null,
formacao varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Direito" , "900.00", "5 anos", "Advogado", 3); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Pedagodia" , "850.00", "4.5 anos", "Professor", 1); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Administração" , "100.00", "5 anos", "Administrador", 3); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Medicina" , "600.00", "5 anos", "Médico", 2); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Nutrição" , "550.00", "3 anos", "Nutricionista", 4); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Educação Fisica" , "900.00", "5 anos", "Instrutor", 2); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Jardinagem" , "580.00", "3 anos", "Jardineiro", 4); 
INSERT INTO tb_cursos (Nome , preco, duracao, formacao, categoria_id)
VALUE ("Radiologia" , "480.00", "2 anos", "Radiologista", 5); 

UPDATE tb_categorias SET periodo = "Noite" WHERE id = 5;

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE Nome LIKE "%J%";

 SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Tecnólogo"
