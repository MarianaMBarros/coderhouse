-- retorna primeira letra de uma string
DELIMITER $$
CREATE FUNCTION primeira_letra(
	valor VARCHAR(16383)
) 
RETURNS VARCHAR(1)
DETERMINISTIC
BEGIN  
   DECLARE resultado VARCHAR(1);
	SET resultado = SUBSTRING(valor, 1, 1);
	RETURN (resultado);
END$$
DELIMITER ;

select primeira_letra("Abc");
select * from shows;
select primeira_letra (title), title from shows;

-- retorna a quantidade de filmes por diretor
DELIMITER $$
CREATE FUNCTION quantidade_diretor(id int)

RETURNS int
DETERMINISTIC
BEGIN  
   DECLARE resultado int;
	 select count(*) into resultado from shows_director where director_id = id;
	RETURN (resultado);
END$$
DELIMITER ;


select id, nome, quantidade_diretor(id) as quantidade_filmes from director;
select * from shows_director;
select count(*) from shows_director where director_id = 1;

