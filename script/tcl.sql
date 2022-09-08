set autocommit = 0;

select * from director;

start transaction;
	DELETE FROM director
	where id = 9;
rollback;

commit;

INSERT INTO director (`id`, `nome`) values (9, 'Kongkiat Komesiri');

select * from director order by id desc;

start transaction;
savepoint inicial;

	INSERT INTO director (`id`, `nome`) values (19, 'Christian Schwochow');
    INSERT INTO director (`id`, `nome`) values (20, 'Bruno Garotti');
savepoint primeiro;
	INSERT INTO director (`id`, `nome`) values (21, 'Pedro de Echave García');
	INSERT INTO director (`id`, `nome`) values (22, 'Pablo Azorín Williams');
savepoint segundo;
	INSERT INTO director (`id`, `nome`) values (23, 'Pedro de Echave García');
	INSERT INTO director (`id`, `nome`) values (24, 'Pablo Azorín Williams');

rollback to primeiro;
commit;