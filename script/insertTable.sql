
insert into content_type (id,tipo) values (1, 'Movie');
insert into content_type (id, tipo) values (2, 'TV Show');

insert into duration (id,temp) values (1, '1 Season');
insert into duration (id,temp) values (2, '2 Seasons');
insert into duration (id,temp) values (3, '4 Seasons');
insert into duration (id,temp) values (4, '5 Season');
insert into duration (id,temp) values (5, '9 Seasons');
insert into duration (id,temp) values (6, '90 min');
insert into duration (id,temp) values (7, '91 min');
insert into duration (id,temp) values (8, '67 min');
insert into duration (id,temp) values (9, '104 min');
insert into duration (id,temp) values (10, '125 min');

insert into country (id,nome) values (1, 'United States');
insert into country (id,nome) values (2, 'South Africa');
insert into country (id,nome) values (3, 'Ghana');
insert into country (id,nome) values (4, 'Burkina Faso');
insert into country (id,nome) values (5, 'India');
insert into country (id,nome) values (6, 'United Kingdom');
insert into country (id,nome) values (7, 'Germany');
insert into country (id,nome) values (8, 'Ethiopia');
insert into country (id,nome) values (9, 'United Kingdom');
insert into country (id,nome) values (10, 'Brazil');

insert into listed_in  (id,nome) values (1, 'Documentaries');
insert into listed_in  (id,nome) values (2, 'International TV Shows');
insert into listed_in  (id,nome) values (3, 'TV Dramas');
insert into listed_in  (id,nome) values (4, 'TV Mysteries');
insert into listed_in  (id,nome) values (5, 'Crime TV Shows');
insert into listed_in  (id,nome) values (6, 'International Movies');
insert into listed_in  (id,nome) values (7, 'TV Action & Adventure');
insert into listed_in  (id,nome) values (8, 'Docuseries');
insert into listed_in  (id,nome) values (9, 'Reality TV');
insert into listed_in  (id,nome) values (10, 'Romantic TV Shows');

insert into director (id,nome) values (1, 'Kirsten Johnson');
insert into director (id,nome) values (2, 'Julien Leclercq');
insert into director (id,nome) values (3, 'Mike Flanagan');
insert into director (id,nome) values (4, 'Robert Cullen');
insert into director (id,nome) values (5, 'José Luis Ucha');
insert into director (id,nome) values (6, 'Haile Gerima');
insert into director (id,nome) values (7, 'Andy Devonshire');
insert into director (id,nome) values (8, 'Theodore Melfi');


insert into rating (id,valor) values (1, 'PG-13');
insert into rating (id,valor) values (2, 'TV-MA');
insert into rating (id,valor) values (3, 'PG');
insert into rating (id,valor) values (4, 'TV-14');
insert into rating (id,valor) values (5, 'TV-PG');
insert into rating (id,valor) values (6, 'TV-Y');
insert into rating (id,valor) values (7, 'TV-Y7');
insert into rating (id,valor) values (8, 'R');


insert into release_year (id,year) values (1, 1993);
insert into release_year (id,year) values (2, 1994);
insert into release_year (id,year) values (3, 1998);
insert into release_year (id,year) values (4, 1999);
insert into release_year (id,year) values (5, 2000);
insert into release_year (id,year) values (6, 2001);
insert into release_year (id,year) values (7, 2010);
insert into release_year (id,year) values (8, 2012);
insert into release_year (id,year) values (9, 2020);
insert into release_year (id,year) values (10, 2021);

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (1, 2, 'Dick Johnson Is Dead', null, 1, '2020-03-25', 9, 1, 6, 'As her father nears the end of his life, filmmaker Kirsten Johnson stages his death in inventive and comical ways to help them both face the inevitable.');
    
insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (2, 2, 'Blood & Water', 'Ama Qamata', 2, '2021-09-24', 10, 2, 2, 'After crossing paths at a party, a Cape Town teen sets out to prove whether a private-school swimming star is her sister who was abducted at birth');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (3, 2, 'Ganglands', 'Sami Bouajila', null, '2020-10-24', 10, 2, 1, 'To protect his family from a powerful drug lord, skilled thief Mehdi and his expert team of robbers are pulled into a violent and deadly turf war.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (4, 2, 'Jailbirds New Orleans', null, null, '2020-09-14', 10, 2, 1, 'Feuds, flirtations and toilet talk go down among the incarcerated women at the Orleans Justice Center in New Orleans on this gritty reality series.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (5, 2, 'Kota Factory', 'Mayur More', 5, '2021-09-24', 10, 2, 2, 'In a city of coaching centers known to train India’s finest collegiate minds, an earnest but unexceptional student and his friends navigate campus life.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (6, 1, 'My Little Pony: A New Generation', 'Vanessa Hudgens', 1, '2020-05-22', 10, 3, 7, 'Equestrias divided. But a bright-eyed hero believes Earth Ponies, Pegasi and Unicorns should be pals — and, hoof to heart, she’s determined to prove it.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (7, 2, 'Midnight Mass', 'Kate Siegel', null, '2021-09-24', 10, 2, 1, 'The arrival of a charismatic young priest brings glorious miracles, ominous mysteries and renewed religious fervor to a dying town desperate to believe.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (8, 1, 'Sankofa', 'Kofi Ghanaba', 1, '2021-10-28', 1, 2, 10, 'On a photo shoot in Ghana, an American model slips back in time, becomes enslaved on a plantation and bears witness to the agony of her ancestral past.');

insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (9, 2, 'The Great British Baking Show', 'Mel Giedroyc', 6, '2021-09-24', 10, 4, 5, 'A talented batch of amateur bakers face off in a 10-week competition, whipping up their best dishes in the hopes of being named the U.K. best.');
    
insert into shows (id,content_type_id, title, cast, country_id, date_added, release_year, rating_id ,duration_id, description) 
	values (10, 1, 'The Starling', 'Melissa McCarthy', 7, '2021-09-12', 10, 1, 9, 'A woman adjusting to life after a loss contends with a feisty bird that taken over her garden — and a husband who struggling to find a way forward.');

insert into shows_director (id,shows_id,director_id) values (1, 1, 1);
insert into shows_director (id,shows_id,director_id) values (2, 2, 2);
insert into shows_director (id,shows_id,director_id) values (3, 3, 3);
insert into shows_director (id,shows_id,director_id) values (4, 4, 4);
insert into shows_director (id,shows_id,director_id) values (5, 5, 5);
insert into shows_director (id,shows_id,director_id) values (6, 6, 6);
insert into shows_director (id,shows_id,director_id) values (7, 7, 7);
insert into shows_director (id,shows_id,director_id) values (8, 8, 8);
insert into shows_director (id,shows_id,director_id) values (9, 1, 1);
insert into shows_director (id,shows_id,director_id) values (10, 2, 2);

insert into shows_listed_in (id,shows_id,listed_in_id) values (1, 1, 1);
insert into shows_listed_in (id,shows_id,listed_in_id) values (2, 2, 2);
insert into shows_listed_in (id,shows_id,listed_in_id) values (3, 3, 3);
insert into shows_listed_in (id,shows_id,listed_in_id) values (4, 4, 4);
insert into shows_listed_in (id,shows_id,listed_in_id) values (5, 5, 5);
insert into shows_listed_in (id,shows_id,listed_in_id) values (6, 6, 6);
insert into shows_listed_in (id,shows_id,listed_in_id) values (7, 7, 7);
insert into shows_listed_in (id,shows_id,listed_in_id) values (8, 8, 8);
insert into shows_listed_in (id,shows_id,listed_in_id) values (9, 9, 9);
insert into shows_listed_in (id,shows_id,listed_in_id) values (10, 10, 10);
