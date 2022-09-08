USE netflix_projeto;

-- Criação de trigger com INSERT 

-- CRIAÇÃO DA TABELA PARA ARMAZENAR OS DADOS ADICIONAIS
CREATE TABLE relat_dados_implementados_shows (
id INT AUTO_INCREMENT PRIMARY KEY,
show_id INT,
title VARCHAR(100) NOT NULL,
usuario VARCHAR(100),
date VARCHAR(100), 
hora VARCHAR(100));

-- CRIAÇÃO DA TRIGGER PARA SALVAR OS DADOS E COMPILAR NA NOVA TABELA CRIADA
CREATE TRIGGER `tr_add_rel_shows`
AFTER INSERT ON `shows`
FOR EACH ROW
	INSERT INTO relat_dados_implementados_shows (show_id, title, usuario, date, hora)  VALUES 
	(NEW.id, NEW.title, user(), current_date(), current_time());
    
-- INSERÇÃO DOS DADOS
INSERT INTO shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	VALUES (12, 1, 'Bangkok Breaking', 'Kongkiat Komesiri', 1, '2021-09-12', 10, 2, 3, 'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.');

SELECT * FROM shows;
SELECT * FROM relat_dados_implementados_shows;

-- Criação de trigger com UPDATE 

CREATE TABLE country_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country_id INT,
    nome VARCHAR(100) NOT NULL,
    action VARCHAR(50) DEFAULT NULL,
    user VARCHAR(100),
    changedat DATETIME DEFAULT NULL    
);

CREATE TRIGGER before_country_update 
    BEFORE UPDATE ON country
    FOR EACH ROW 
 INSERT INTO country_log
 SET action = 'update_before',
     country_id = OLD.id,
     nome = OLD.nome,
     user = user(),
     changedat = NOW();
     
     CREATE TRIGGER before_country_insert 
    BEFORE insert ON country
    FOR EACH ROW 
 INSERT INTO country_log
 SET action = 'insert_before',
     country_id = new.id,
     nome = new.nome,
     user = user(),
     changedat = NOW();
     
     insert into country (id,nome) value (12,'Antonia');
CREATE TRIGGER after_country_update 
    AFTER UPDATE ON country
    FOR EACH ROW 
 INSERT INTO country_log
 SET action = 'update_after',
     country_id = New.id,
     nome = New.nome,
     user = user(),
     changedat = NOW();
     

drop table country_log;

 Select * from country;
 Select * from country_log;
 delete from country_log where id = 1;
 
 Update country set nome  = 'Ghana' where id = 3;
 drop trigger after_country_update;  


