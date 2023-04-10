CREATE DATABASE db_farmacia_bem_estar;
USE  db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint auto_increment,
cosmeticos varchar (255) not null,
medicamentos varchar (255) not null,
primary key (id)
);

SELECT * FROM tb_categorias;

ALTER TABLE tb_categorias CHANGE cosmeticos tipo varchar (255) not null;

ALTER TABLE tb_categorias CHANGE nome recomendacao varchar (255) not null;

INSERT INTO tb_categorias(tipo, recomendacao)
	values ("Medicamento","Infantil");
INSERT INTO tb_categorias(tipo, recomendacao)
	values ("Medicamento","Adulto");    
INSERT INTO tb_categorias(tipo, recomendacao)
	values ("Cosmetico","Infantil");    
 INSERT INTO tb_categorias(tipo, recomendacao)
	values ("Cosmetico","Adulto");   
 INSERT INTO tb_categorias(tipo, recomendacao)
	values ("Cosmetico","Sem prescrição");    
    
    DELETE FROM tb_categorias WHERE id = 7;
    
 CREATE TABLE tb_produtos (
id bigint auto_increment, 
nome varchar (255) not null,
preco decimal (6,2) not null,
quantidade int,
indicação varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);       

SELECT * FROM tb_produtos;


INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Dorflex", 13.00, 1, "Dor muscular", 2);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Dramim", 51.00, 1, "Enjoo", 1);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Acetona", 18.00, 2, "Esmaltaria", 5);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Qlaira", 58.00, 1, "Contraceptivo", 2);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Amoxilina", 60.00, 1, "Antibiotico", 2);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Diclofenaco", 15.00, 1, "Anti Inflamatorio", 2);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Batom", 9.00, 3, "Maquiagem", 3);

INSERT INTO tb_produtos (nome, preco, quantidade, indicação, categoria_id)
VALUES ("Dipirona", 11.00, 1, "Medicamento", 5);


SELECT * FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN  5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Medicamento";
    
 