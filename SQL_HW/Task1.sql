create database if not exists employees;
use employees;
create table if not exists employee(
id integer unsigned not null auto_increment primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
post_id integer unsigned,
salary integer unsigned not null
);
insert into employee(id, first_name, last_name, salary) values (null, 'Вячеслав', 'Григорьев', 30000);
insert into employee(id, first_name, last_name, salary) values (null, 'Пётр', 'Черенков', 25000);
insert into employee(id, first_name, last_name, salary) values (null, 'Алексей', 'Иванов', 40000);
insert into employee(id, first_name, last_name, salary) values (null, 'Николай', 'Петров', 75000);
create table if not exists post(
id integer unsigned not null auto_increment primary key,
post_name varchar(20)
);
insert into post(id, post_name) values (null, 'Разработчик');
insert into post(id, post_name) values (null, 'Тестировщик');
update employee set post_id = 2 where id in (1,2,3);
update employee set post_id = 1 where id = 4;
