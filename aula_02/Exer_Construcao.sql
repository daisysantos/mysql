CREATE DATABASE db_construindo_vidas;
USE  db_construindo_vidas;

CREATE TABLE tb_categorias (
id bigint auto_increment,
funcao varchar (255) not null,
tipo varchar (255) not null,
primary key (id)
);

INSERT INTO tb_categorias(funcao, tipo)
VALUE ("Decoracao" , "Interno");
INSERT INTO tb_categorias(funcao, tipo)
VALUE ("Acabamento" ,"Interno");
INSERT INTO tb_categorias(funcao, tipo)
VALUE ("Construcao" , "Externo");
INSERT INTO tb_categorias(funcao, tipo)
VALUE ("Reforma" , "Externa");

SELECT * FROM tb_categorias;

CREATE TABLE  tb_produtos ( 
Id bigint auto_increment, 
nome varchar (255) not null,
preco decimal (6,2) not null,
qualidade varchar (255) not null,
peso varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Viga Ferro" , 56.00, "Alta", "20Kg", 3); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Vaso" , 150.00, "Baixa", "1g", 1); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Massa corrida" , 106.00, "Alta", "5Kg", 2); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Revestimento" , 300.00, "Médio", "12Kg", 1); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Tijolo" , 60.00, "Baixa", "2Kg", 4); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Bocal" , 15.00, "Alta", "200g", 2); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Telha" , 70.00, "Médio", "8Kg", 3); 

INSERT INTO tb_produtos (Nome , preco, Qualidade, Peso, categoria_id )
VALUE ("Piso" , 27.00, "Alta", "900g", 4); 

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

 SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Externo"