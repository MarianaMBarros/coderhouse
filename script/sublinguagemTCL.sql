# DETERMINA O DATABASE
USE netflix_projeto;

# COMFIRMA QUE O AUTOCOMMIT ESTÁ DESATIVADO PREVIAMENTE
SET AUTOCOMMIT = 0;

#INSERIR ALGUNS DADOS A MAIS CASO NÃO EXISTA JÁ EM SUA TABELA
INSERT INTO shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	VALUES (12, 1, 'Bangkok Breaking', 'Kongkiat Komesiri', 1, '2021-09-12', 10, 2, 3, 'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.');


-- PRIMEIRA RESOLUÇÃO
# VERIFICAR A SITUAÇÃO DA TABELA ATUAL
SELECT * FROM shows;

# INICIANDO O PROCESSO DA SUBLINGUAGEM TCL
START TRANSACTION;

#REALIZANDO MODIFICAÇÕES NA TABELA
DELETE FROM shows WHERE id = 12;
INSERT INTO shows (id,content_type_id) VALUES (20, 1);

# CONFIRMAR QUE AS ATUALIZAÇÕES FORAM ATUALIZADAS
SELECT * FROM shows;

# RETOMA O ESTADO INICAL
ROLLBACK;

# VERIFICA O ESTADO ATUAL DA TABELA
SELECT * FROM shows;

# DELETA O DADO ADICIONADO A MAIS 
DELETE FROM shows WHERE id = 20;

# EXECUTA O COMMIT 
COMMIT;

# VERIFICA O ESTADO ATUAL DA TABELA
SELECT * FROM shows;





-- SEGUNDA RESOLUÇÃO 
# COMFIRMA QUE O AUTOCOMMIT ESTÁ DESATIVADO PREVIAMENTE
SET AUTOCOMMIT = 0;

# INICIANDO O PROCESSO DA SUBLINGUAGEM TCL
START TRANSACTION;

# INSERÇÃO DE ALGUNS DADOS
INSERT INTO shows (id, title) VALUES (21, 'PedroH');
INSERT INTO shows (id, title) VALUES (22, 'Camila');
INSERT INTO shows (id, title) VALUES (23, 'Rodrigo');
INSERT INTO shows (id, title) VALUES (24, 'Giselle');

# CRIAÇÃO DO PRIMEIRO SAVEPOINT
SAVEPOINT lote1;

# INSERÇÃO DE MAIS DADOS 
INSERT INTO shows (id, title) VALUES (25, 'Joao');
INSERT INTO shows (id, title) VALUES (26, 'Juliano');
INSERT INTO shows (id, title) VALUES (27, 'Leticia');
INSERT INTO shows (id, title) VALUES (28, 'Lucas');

#CRIAÇÃO DO SEGUNDO SAVEPOINT
SAVEPOINT lote2;

# VERIFICA COMO ESTÁ A TABELA
SELECT * FROM shows;

# RETORNA AO ESTADO EM QUE ESTAVA NA CRIAÇÃO DO PRIMEIRO SAVEPOINT
ROLLBACK TO SAVEPOINT lote1;

# VERIFICA COMO ESTÁ A TABELA
SELECT * FROM shows;