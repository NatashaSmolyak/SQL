--  1.Создать таблицу employees
--  id. serial,  primary key
--  employee_name. Varchar(50), not null
create table employees (
id serial primary key,
employee_name varchar (50) not null
);

--  Вывод данных из таблицы employees
select *from employees;

-- 2. Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Nata Smolyak'), ('William Aaron Brooks'), ('Carlos Nathan Adams'), ('Charles Wyatt Russell'), ('Angel Jesse Watson'), ('Anthony Anthony Nelson'), 
('Landon Carter King'),('David Jayden Brown'),('Joshua Miguel Mitchell'),('Miguel Jose Howard'),('Ian Benjamin Wright'),('Jaden Gavin Butler'), ('Jacob Dominic Price'),
('Ian Ethan Rogers'),('Caleb Matthew Wilson'),('Miguel Elijah Gonzales'),('Charles Ashton Lewis'),('Landon Eric Anderson'),('Dylan Jesse Thomas'),('Jake Christopher Butle), ('Kaitlyn Evelyn Carter'),
('Erin Allison Flores'), ('Anna Olivia Perez'), ('Alyssa Sierra Nelson'), ('Caroline Melanie Rodriguez'), ('Lillian Kaylee Hayes'), ('Faith Kaitlyn Mitchell'),
('Bailey Mia Lee'), ('Julia Sierra Jenkins'), ('Sydney Faith Cox'), ('Jessica Jordan Wright'), ('Megan Stephanie Sanders'), ('Stephanie Kaitlyn Morgan'),
('Chloe Jenna Green'), ('Vanessa Kaitlyn Campbell'), ('Sara Samantha Lee'),('Danielle Jada Walker'), ('Erin Sarah Price'), ('Natalie Elizabeth Jackson'),
('Danielle Leah Johnson'),('Adam Carlos Williams'), ('Ryan Jake Patterson'), ('Ian Aidan Gonzales'), ('Isaac Jaden Clark'), ('Joshua Diego Moore'),
('Seth Benjamin Thompson'), ('Jose Steven Gray'), ('Charles Adrian Green'), ('Caleb Cole Bailey'), ('Wyatt Ian Rogers'), ('Connor Gabriel Wood'),('Gabriel Jose Hughes'),
('Jayden Kevin Parker'), ('Amelia Marissa Ross'), ('Olivia Victoria Thompson'),('Rachel Ella Miller'),('Madison Brooke Murphy'),('Leslie Kaitlyn Williams'),
('Katherine Danielle Wood'),('Allison Maya Martin'),('Emily Mackenzie Walker'),('Aaliyah Leah Griffin'),('Sofia Julia Jenkins'),('Trinity Irea Scott'),('Vanessa Audrey Coleman'),
('Zoe Autumn Cox'), ('Ariana Evelyn King'), ('Julia Sara Ramirez'),('Colin Noah Hernandez'), ('Isaac Pat Powell');
    
--  3. Создать таблицу salary
--  id. Serial  primary key,
--  monthly_salary. Int, not null
    
create table salary (
id serial primary key,
monthly_salary int not null
);
																		   
--  Вывод данных из таблицы Salary   
select *from salary;
  
--  4. Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values (1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);
																		   
--  5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
																		   
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);
--  Добавим внешние ключи в таблицу employee_salary для установления связей 
--  с таблицами employees и salary.
ALTER TABLE employee_salary ADD FOREIGN KEY (employee_id)
  REFERENCES employees (ID);
 
 ALTER TABLE employee_salary ADD FOREIGN KEY (salary_id)
  REFERENCES salary (ID);

 select * from employee_salary;
 
--  6. Наполнить таблицу employee_salary 40 строками:
--  в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id,salary_id)
values (1,1),(2,1),(3,1),(4,1),(5,1),(6,2),(7,2),(8,2),(9,2),(10,1),(11,2),(12,2),(13,2),(14,2),(15,3),(16,3),(17,3),(18,4),(19,4),(20,5),(21,5),(22,6),(23,6),(24,7),(25,7),(26,8),(27,9),(28,9),(29,10),(30,10),(31,11),(32,12),(33,12),(34,13),(35,14),(36,14),(37,15),(38,15),(39,16),(40,16);
--  7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
	  
	  create table roles(
	  id serial primary key,
	  role_name int not null unique);
	 
--  8.Поменять тип столба role_name с int на varchar(30)
	alter table roles
	alter column role_name type varchar(30) using role_name:: int;
    
--  Вывод данных из таблицы roles
select * from roles;

--  9. Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');
--  10.Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
        references employees(id),
 foreign key (role_id)
        references roles(id));       
--  Вывод данных из таблицы roles_employee
select *from roles_employee;

--  11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,role_id)
values (1,2),(2,2),(3,3),(4,6),(5,4),(6,8),(7,10),(8,15),(9,11),(10,18),(11,19),(12,20),(13,20),(14,1),(15,8),(16,6),(17,14),(18,15),(19,16),(20,18),(21,13),(22,13),(23,12),(24,10),(25,9),(26,9),(27,7),(28,6),(29,12),(30,14),(31,20),(32,17),(33,19),(34,16),(35,16),(36,15),(37,15),(38,18),(39,19),(40,20);
