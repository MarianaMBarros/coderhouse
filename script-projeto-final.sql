CREATE DATABASE Netflix_projeto_final;
USE  Netflix_projeto_final;

CREATE TABLE country(
	id INT NOT NULL,
    nome  VARCHAR(100) NOT NULL,
    CONSTRAINT pk_country PRIMARY KEY (id)
    );

CREATE TABLE duration(
	id 	INT NOT NULL,
    temp VARCHAR(50) NOT NULL,
    CONSTRAINT pk_duration PRIMARY KEY(id)
    );

CREATE TABLE content_type(
	id 	INT NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    CONSTRAINT pk_content_type PRIMARY KEY(id)
    );

CREATE TABLE rating(
	id 	INT NOT NULL,
    valor VARCHAR(100) NOT NULL,
    CONSTRAINT pk_rating PRIMARY KEY(id)
    );

CREATE TABLE release_year(
	id 	INT NOT NULL,
    year INT NOT NULL,
    CONSTRAINT pk_release_year PRIMARY KEY(id)
    );

CREATE TABLE director(
	id int NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT pk_director PRIMARY KEY (id)
    );

CREATE TABLE shows(
	id INT NOT NULL,
    content_type_id INT NOT NULL, 
    title VARCHAR(255) NOT NULL,
    cast VARCHAR(1000) NULL,
    country_id INT NULL, 
    date_added DATETIME NULL,
    release_year INT NULL, 
    rating_id INT NULL, 
    duration_id INT NULL,
    description VARCHAR(3000) NULL,
    CONSTRAINT pk_netflix PRIMARY KEY(id),
    FOREIGN KEY (country_id) REFERENCES country(id),
    FOREIGN KEY (duration_id) REFERENCES duration(id),
    FOREIGN KEY (content_type_id) REFERENCES content_type(id),
    FOREIGN KEY (rating_id) REFERENCES rating(id)
    );
    
    CREATE TABLE shows_director(
	id INT NOT NULL, 
    shows_id INT NOT NULL,
    director_id INT NULL, 
    CONSTRAINT pk_shows_director PRIMARY KEY (id),
	FOREIGN KEY (director_id) REFERENCES director(id),
    FOREIGN KEY (shows_id) REFERENCES shows(id)
    );
    
    CREATE TABLE listed_in(
		id 	INT NOT NULL,
		nome VARCHAR(100) NOT NULL,
		CONSTRAINT pk_listed_in PRIMARY KEY(id)
    );
    
    CREATE TABLE shows_listed_in(
		id INT NOT NULL,
        shows_id INT NOT NULL,
        listed_in_id INT, 
        CONSTRAINT pk_shows_listed_in PRIMARY KEY (id),
        FOREIGN KEY (listed_in_id) REFERENCES listed_in(id),
        FOREIGN KEY (shows_id) REFERENCES shows(id)
	);