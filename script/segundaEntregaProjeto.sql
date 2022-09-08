USE netflix_projeto;

----------- LISTAGEM DAS VIEWS

# FACILITA ESCOLHER ALGO NO CATÁLOGO PELO TEMPO DE DURAÇÃO E ANO DE LANÇAMENTO
# COMPOSTA PELA TABELA 'release_year' E 'duration'.
CREATE OR REPLACE VIEW AnoLançamento_duracao
AS
	SELECT release_year.year as Ano_Lancamento,
		temp as duraçao
			FROM release_year
		INNER JOIN duration
			WHERE release_year.id = duration.id;

# ANÁLISE APENAS PELO TÍTULO E CLASSIFICAÇÃO
# COMPOSTA PELA TABELA 'listed_in' E 'shows'.
CREATE VIEW titulo_classificacao
AS
SELECT title as titulo,
	date_added as data_adicionado,
    listed_in.nome as classificacao
		FROM shows
	INNER JOIN listed_in
		WHERE listed_in.id = shows.id;

# ESCOLHA PELO PAIS DE PRODUÇÃO E DIRETOR
# COMPOSTA PELA TABELA 'country' E 'director'.
CREATE VIEW paisprodução_diretor
AS 
	SELECT country.nome as pais_de_producao,
		director.nome as diretor
 			FROM country
 	INNER JOIN director 
 		WHERE country.id = director.id;
	
# VIEW QUE PERMITE VER TODOS OS DOCUMENTARIOS DISPONÍVEIS
# COMPOSTA PELA TABELA 'listed_in' E 'shows'.
CREATE OR REPLACE VIEW documentarios
AS 
SELECT title AS Título,
	description AS descricao
    FROM shows
    WHERE shows.id = (SELECT id FROM listed_in WHERE nome = 'Documentaries');
    
# CASO QUEIRA ESCOLHER PELO ESTILO E DESCRIÇÃO, ESSA TABELA EXISTE
# COMPOSTA PELA TABELA 'content_type' E 'shows'.
CREATE VIEW titulo_estilo_descricao
AS 
	SELECT shows.title as titulo,
		content_type.tipo as estilo,
		description as descricao
			FROM shows
		INNER JOIN content_type
			ON content_type.id = shows.content_type_id; 
            
            
-- LISTAGEM DAS FUNÇÕES

