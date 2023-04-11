CREATE DATABASE db_pizzaria_legal;
USE  db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint auto_increment,
descricao varchar (255) not null,
tipo varchar (255) not null,
primary key (id)
);

SELECT * FROM tb_categorias;

	INSERT INTO tb_categorias(descricao, tipo)
	values ("Salgada","Vegano");
	INSERT INTO tb_categorias(descricao, tipo)
	values ("Doce","Vegano");  
	INSERT INTO tb_categorias(descricao, tipo)
	values ("Salgado","Comum"); 
    INSERT INTO tb_categorias(descricao, tipo)
	values ("Doce","Comum"); 
    INSERT INTO tb_categorias(descricao, tipo)
	values ("Broto","Vegano"); 
    INSERT INTO tb_categorias(descricao, tipo)
	values ("Broto","Comum"); 
    
    
CREATE TABLE tb_pizzas (
id bigint auto_increment, 
sabor varchar (255) not null,
valor decimal (6,2) not null,
quantidade int,
borda varchar (255) not null,
entrega varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);    


INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Mussarela", 42.00, 1, "recheada", "Balcão",3);
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Banana", 44.00, 1, "S/Borda", "Delivery",2);
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Marguerita", 46.00, 2, "cheddar", "Balcão",3);
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Brocolis", 60.00, 3, "S/Borda", "Balcão",1);
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Morango c/ Nutella", 70.00, 1, "S/B", "Delivery",4);
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Calamussa", 38.00, 2, "S/Borda", "Retirada","3");
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Filé Mignon", 70.00, 2, "S/Borda", "Delivery", "6");
INSERT INTO tb_pizzas (sabor, valor, quantidade, borda, entrega, categoria_id)
VALUES ("Tofu", 71.00, 1, "S/Borda", "Balcao",5);   

UPDATE tb_pizzas SET borda = "S/Borda" WHERE id = 5;

SELECT * FROM tb_pizzas; 

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN  50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Broto";