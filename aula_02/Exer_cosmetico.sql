CREATE DATABASE db_cosmeticos; 
USE db_cosmeticos;
CREATE TABLE db_cosmeticos (
	id bigint auto_increment,
    nome varchar (255) not null,
    quantidade int, 
    preco decimal not null,
    recomendacao varchar (255) not null,
    grama varchar (255) not null,
    primary key (id)
    );
    
     INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Batom",100,9.90,"rosto","50g");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Base",60,30.00,"pele","90g");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Demaquilante",50,45.00,"rosto","100ml");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Cilios",75,15.00,"rosto","20g");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Hidratante",125,6.00,"corpo","400g");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Chapinha",50,650.00,"cabelo","1kg");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Esmalte",60,2.25,"unha","20ml");
    
    INSERT INTO db_cosmeticos(nome, quantidade, preco, recomendacao, grama)
	values ("Secador",50,635.00,"cabelo","50grama");
    
    SELECT * FROM db_cosmeticos;
    
    ALTER TABLE db_cosmeticos MODIFY preco decimal (6,2);
    
	SELECT * FROM db_cosmeticos where preco > 500.00;
    
    SELECT * FROM db_cosmeticos where preco < 500.00;
    
    UPDATE db_cosmeticos SET grama = "1kg"  where id = 9;
    