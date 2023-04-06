CREATE DATABASE db_rh; 
USE db_rh;
CREATE TABLE db_rh(
	id bigint auto_increment,
    nome varchar (255) not null,
    cargo varchar (255) not null, 
    salario decimal not null,
    idade int,
    email varchar (255) not null, 
    primary key (id)
    );
    
    SELECT * FROM db_rh;
    
    INSERT INTO db_rh(nome, cargo, salario, idade, email)
	values ("Daisy Santos","CEO",10000.00,26,"daisy.cristina@generation.com");
    
    INSERT INTO db_rh(nome, cargo, salario, idade, email)
	values ("Gabriel Machado","Gerente",80000.00,23,"gabriel.machado@generation.com");
    
    INSERT INTO db_rh(nome, cargo, salario, idade, email)
	values ("Beatriz Seraphim","Supervisora",70000.00,22,"beatriz.seraphim@generation.com");
    
    INSERT INTO db_rh(nome, cargo, salario, idade, email)
	values ("Carolina Araujo","Gestora",60000.00,25,"carolina.araujo@generation.com");
    
    INSERT INTO db_rh(nome, cargo, salario, idade, email)
	values ("Liza Hainna","Instrutora",50000.00,24,"liza.hainna@generation.com");
    
    UPDATE db_rh SET salario = 1200.00 where id = 4;
    
    UPDATE db_rh SET salario = 1800.00 where id = 5;
    
    SELECT * FROM db_rh where salario > 2000.00;
    
    SELECT * FROM db_rh where salario < 2000.00;
    