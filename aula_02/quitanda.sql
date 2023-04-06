CREATE DATABASE db_quitanda; 
USE db_quitanda;
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar (255) not null,
    quantidade int, 
    preco decimal not null,
    primary key (id)
    );

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade,preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade,preco)
values ("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade,preco)
values ("pera", 500, 2.99);


SELECT nome, quantidade FROM tb_produtos;

SELECT *FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos where preco > 5.00 AND quantidade < 100;

SET SQL_SAFE_UPDATES = 1;

-- Atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.00 where id = 1;

-- Deletar itens
DELETE FROM tb_produtos WHERE id = 7;
 
-- Atualizar Coluna Preço
ALTER TABLE tb_produtos MODIFY preco decimal (6,2);
ALTER TABLE tb_produtos MODIFY nomedoproduto where id 8

INSERT INTO tb_produtos(nome, quantidade,preco)
values ("tomate", 50, 8.80);

-- Adicionar uma nova coluna
ALTER TABLE tb_produtos ADD descricao varchar (255);

--DROP para coisas maiores como colunas e nome de tabelas
--DELETE ser para itens especificos dentro da tabela como linhas--

ALTER TABLE tb_produtos DROP descricao;

--Alterar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar (255);
