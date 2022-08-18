-- Instruções para criação da procedure.
-- Crie uma procedure dentro de Netflix_projeto_final ir em Stored Procedures, 
-- clique com o botão direito do mouse e selecione a opção Create Stored Procedure.
-- Após a criação, copiar a procedure desejada abaixo e colar o script desejado e colar.
-- Para executar a procedure clicamos em Apply, na parte inferior direita do painel em que estamos trabalhando. 
-- Na próxima janela, verificamos se todo o código está correto e clicamos novamente em Apply.
-- Para encontrar a Procedure basta clicar em Stored Procedures e encontraremos a procedure criada.

-- OBS: fazer todo o processo de criação de procedure para cada.

-- Procedure de ordenação
DELIMITER $$
CREATE PROCEDURE `director_ordem2`(IN nome CHAR(20), ordenacao varchar(4))
BEGIN
	IF nome <> '' THEN 
		SET @director_order = concat('ORDER BY ', nome);
	ELSE 
		SET @director_order = 'id';
    END IF;
    
    IF ordenacao <> '' THEN 
		SET @director_ordenacao = ordenacao;
	ELSE 
		SET @director_ordenacao = 'asc';
    END IF;
    
    SET @director = concat('SELECT * FROM director ', @director_order, ' ', @director_ordenacao);
	PREPARE runSQL FROM @director;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END$$
DELIMITER ;

-- 
call director_ordem ('nome','desc')


-- Procedure de insert
DELIMITER $$
CREATE PROCEDURE `director_insert`( id int, nome varchar(60))
BEGIN
	insert into director (id,nome) values (id, nome);
END$$
DELIMITER ;

-- Executar o select
call director_insert (9, 'Kongkiat Komesiri')


-- Procedure de delete
DELIMITER $$
CREATE PROCEDURE `country_delete`(id_pais int)
BEGIN
	delete from country where id = id_pais;
END$$
DELIMITER ;

-- Executar o delete
call country_delete (10)