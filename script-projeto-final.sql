-- drop table shows;

create database projeto_final;

use projeto_final;

CREATE TABLE content_type (
    id int NOT NULL,
    type varchar(100) NOT NULL,
    CONSTRAINT pk_content_type PRIMARY KEY (id)
);

CREATE TABLE director (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT pk_director PRIMARY KEY (id)
);

CREATE TABLE country (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT pk_country PRIMARY KEY (id)
);

CREATE TABLE listed_in (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT pk_listed_in  PRIMARY KEY (id)
);

CREATE TABLE rating (
    id int NOT NULL,
    value varchar(100) NOT NULL,
    CONSTRAINT pk_rating PRIMARY KEY (id)
);

CREATE TABLE release_year (
    id int NOT NULL,
    year int NOT NULL,
    CONSTRAINT pk_release_year PRIMARY KEY (id)
);

CREATE TABLE duration (
    id int NOT NULL,
    temp varchar(50) NOT NULL,
    CONSTRAINT pk_release_year PRIMARY KEY (id)
);

CREATE TABLE shows (
    id varchar(40) NOT NULL,
    content_type_id int NOT NULL,
    title varchar(255) NOT NULL,
    cast varchar(1000) NULL,
    country_id int NULL,
    date_added datetime NULL,
    release_year_id int NULL,
    rating_id int NULL,
    duration_id int NULL,
    description	 varchar(3000) NULL,
    CONSTRAINT pk_netflix PRIMARY KEY (id),
	FOREIGN KEY (content_type_id) REFERENCES content_type(id),
    FOREIGN KEY (country_id) REFERENCES country(id),
    FOREIGN KEY (release_year_id) REFERENCES release_year(id),
    FOREIGN KEY (rating_id) REFERENCES rating(id),
    FOREIGN KEY (duration_id) REFERENCES duration(id)
);


CREATE TABLE shows_director (
    id int NOT NULL,
    shows_id varchar(40) not null,
    director_id int NULL,
    CONSTRAINT pk_shows_director PRIMARY KEY (id),
    FOREIGN KEY (shows_id) REFERENCES shows(id),
    FOREIGN KEY (director_id) REFERENCES director(id)    
);

CREATE TABLE shows_listed_in (
    id int AUTO_INCREMENT NOT NULL,
    shows_id varchar(40) not null,
    listed_in_id int null,
    CONSTRAINT pk_shows_listed_in PRIMARY KEY (id),
    FOREIGN KEY (shows_id) REFERENCES shows(id),
    FOREIGN KEY (listed_in_id) REFERENCES listed_in(id)
);