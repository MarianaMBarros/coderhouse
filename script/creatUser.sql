SELECT * FROM mysql.user;

-- CRIAÇÃO DE USUARIOS
CREATE USER 'mariana'@'localhost' IDENTIFIED BY 'marianabarros'; 
CREATE USER 'pedro'@'localhost' IDENTIFIED BY 'pedrosilva'; 

-- PERMISSÃO DE LEITURA 
GRANT SELECT ON Netflix_projeto_final.shows TO 'mariana'@'localhost';

-- PERMISSÃO DE LEITURA, INSERÇÃO, MODIFICAÇÃO
GRANT SELECT, INSERT, UPDATE ON Netflix_projeto_final.shows TO 'pedro'@'localhost';

-- NÃO TERM PERMISSÃO DE EXCLUSÃO
REVOKE DELETE ON *.* FROM 'mariana'@'localhost';
REVOKE DELETE ON *.* FROM 'pedro'@'localhost';

-- MOSTRAR PERMISSÃO
SHOW GRANTS FOR 'mariana'@'localhost';
SHOW GRANTS FOR 'pedro'@'localhost';