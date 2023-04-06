CREATE DATABASE db_escola; 
USE db_escola;
CREATE TABLE tb_alunos (
	id bigint auto_increment,
    nome varchar (255) not null,
    serie varchar (255) not null, 
    nota decimal not null,
    idade int,
    periodo varchar (255) not null,
    primary key (id)
    );
    
    ALTER TABLE tb_alunos MODIFY nota decimal (6,2);
    
    SELECT * FROM tb_alunos;
    
       INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Nicolas Vinicius","9º",10.0,14,"manhã");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Nicolly Beatriz","1º colegial",9.75,15,"tarde");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Beatriz Picon","3º colegial",7.5,16,"manhã");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Jojo Todynhos","5º",7.00,9,"manhã");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Gabriel Machado","9º",9.00,15,"noite");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Cristina Santos","3º colegial",9.75,17,"noite");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Rafael Queiros","6º",5.00,13,"manhã");
    
    INSERT INTO tb_alunos(nome, serie, nota, idade, periodo)
	values ("Grazi Massafera","7º",4.00,11,"tarde");
    
    SELECT * FROM tb_alunos where nota < 7.00;
    
    SELECT * FROM tb_alunos where nota > 7.00;
    
    UPDATE tb_alunos SET periodo = "noite"  where id = 1;
    
    