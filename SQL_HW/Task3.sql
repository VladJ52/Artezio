alter table employee add head_id integer not null;
alter table employee add subemp_id integer not null;
create table if not exists heads(
id integer unsigned not null auto_increment primary key,
head_first_name varchar(30) not null,
head_last_name varchar(30) not null
);
insert into heads (id, head_first_name, head_last_name) values (null, 'Алексей', 'Иванов');
insert into heads (id, head_first_name, head_last_name) values (null, 'Николай', 'Петров');
update employee set head_id = 1 where id in (1,2);
update employee set head_id = 2 where id = 3;
select heads.head_first_name, heads.head_last_name, employee.first_name, employee.last_name from heads inner join employee on heads.id = employee.head_id and heads.id = 1;