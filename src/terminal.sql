postgres=# create table workers(id serial PRIMARY KEY, workers_name varchar(50) NOT NULL,age int NOT NULL,department varchar NOT NULL,salary int NOT NULL);
CREATE TABLE
    postgres=# insert into workers(workers_name,age,department,salary)
    postgres-# values('Asan',23,'business analyst',4500),('Uson',24,'business development manager',5000),('Adilet',26,'director analytics',6000),('Akylai',20,'director marketing',4500),('Aizat',24,'business manager',4399),('Nurik',26,'analytics lead',5000);
INSERT 0 6
postgres=# create table departments(id serial PRIMARY KEY, number_of_people int NOT NULL,department_name varchar (50) NOT NULL,direction varchar (40) NOT NULL, workers_id int references workers(id));
CREATE TABLE
    postgres=# insert into departments(number_of_people,department_name,direction,workers_id)
    postgres-# values(20,'Business development','BUSINESS',2),(6,'Business analytics','BUSINESS',1),(18,'Business Managment','BUSINESS',5),(2,'Director analytics','MARKETING',4),(3,'Analytics','ANALYSIS',6);
INSERT 0 5
postgres=# create table programmingLanguages(id serial primary key, name_of_progLanguage varchar(40) not null, complexity varchar(40) not null);
CREATE TABLE
    postgres=# insert into programmingLanguages(name_of_progLanguage, complexity)
    postgres-# values('JAVA','difficult'),('Python','medium'),('JavaScript','easy'),('PhP','medium'),('Ruby','medium'),('C++','difficult');
INSERT 0 6
postgres=# create table categories(id serial primary key, name_category varchar);
CREATE TABLE
    postgres=# insert into categories(name_category)
    postgres-# values('Social Networking'),('Entertainment'),('Productivity'),('Communication'),('Education'),('Financy'),('Navigation');
INSERT 0 7
postgres=# create table apps(id serial primary key, name_of_app varchar(30) not null, created_by varchar (50) not null, yearOfcreate varchar not null, category_id int references categories(id),programmLanguage_id int references programmingLanguages(id));
CREATE TABLE
    postgres=# insert into apps(name_of_app,created_by,yearOfcreate,category_id,programmLanguage_id)
    postgres-# values('FaceBook','Mark Zuckerberg','2004',1,2),('Instagramm','Kevin Systrom and Mike Krieger','2010',1,3),('Netflix','Reed Hastings and Marc Randolph','1997',2,1),('Spotify','Daniel Ek and Martin Lorentzon','2006',2,4),('Microsoft (Word, Excel)','Microsoft Corporation','1989',3,1),('Evernote','Stepan Pachikov','2008',3,5),('WhatsApp','Jan Koum and Brian Acton','2009',4,1),('Telegramm','Pavel Durov','2013',4,1),('PayPal','Elon Mask','1998',5,1),('Mint','Aaron Patzer','2006',5,6),('Google maps','Google','2005',6,4),('Apple map','Apple inc','2012',6,5);
INSERT 0 12
postgres=# create table teachers(id serial primary key, full_name varchar (100), age int not null,education varchar(200) not null);
CREATE TABLE
    postgres=# insert into teachers(full_name,age,education)
    postgres-# values('Aigerim Abai kyzy',30,'higher'),('Asan Tashmatov',34,'avarage'),('Ulan Usonov',45,'higher'),('Akyl Abbasov',33,'higher');
INSERT 0 4
postgres=# create table students(id serial primary key, full_name varchar (100) not null, age int not null, group_name varchar (50) not null, teachers_id int references teachers(id));
CREATE TABLE
    postgres=# insert into students(full_name,age,group_name,teachers_id)
    postgres-# values('Baktulan Nazirbek uulu',23,'Java-10',1),('Januzak Anashov',24,'JS-10',2),('Asylbek Asylbekov',34,'Python-10',3),('Akylai Musaeva',21,'PhP-10',4);
INSERT 0 4
postgres=# create table grades(id serial primary key, students_id int  references students(id), grade decimal(10,2), teachers_id int references teachers(id));
CREATE TABLE
    postgres=# insert into grades(students_id,grade,teachers_id)
    postgres-# values(1,20.22,1),(2,18.99,2),(3,19.44,3),(4,21.33,4);
INSERT 0 4
postgres=# create table carCompanies(id serial primary key,name varchar (50) not null, branches int not null);
CREATE TABLE
    postgres=# insert into carCompanies(name,branches)
    postgres-# values('Audi',122),('Mersedes-Benz',240),('Toyota',50);
INSERT 0 3
postgres=# create table cars(id serial primary key,car_name varchar not null, yearOfMade date, price int not null,carCompanies_id int references carCompanies(id));
CREATE TABLE
    postgres=# insert into cars(car_name,yearOfMade,price,carCompanies_id)
    postgres-# values('Audi A6','2020-05-04',13000,1),('Mersedes-Benz','2008-06-12',14000,2),('Toyota Camry 55','2020-06-02',17000,3);
INSERT 0 3





