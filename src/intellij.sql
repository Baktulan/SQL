create table country
(
    id           serial PRIMARY KEY,
    country_name varchar
);
insert into country(country_name)
values ('USA'),
       ('Russia'),
       ('KG'),
       ('KZ'),
       ('Chine'),
       ('Korea');


create table cities
(
    id         serial PRIMARY KEY,
    city_name  varchar,
    country_id int references country (id)
);
insert into cities(city_name, country_id)
values ('Moscow', 2),
       ('New-York', 1),
       ('Bishkek', 3),
       ('Almaty', 4),
       ('Pekin', 5),
       ('Seoul', 6);

create table productCompanies
(
    id                    serial PRIMARY KEY,
    productCompanies_name varchar,
    city_id               int references cities (id)
);
insert into productCompanies(productCompanies_name, city_id)
values ('Mother dairy', 2),
       ('Royal foods', 6),
       ('Lays', 5),
       ('Umut', 3),
       ('7up', 1),
       ('BlackStar', 4);


create table stores
(
    id         serial PRIMARY KEY,
    store_name varchar(40),
    address    varchar(70),
    city_id    int references cities (id)
);
insert into stores(store_name, address, city_id)
values ('Aldi', 'Carmeen Gardens', 2),
       ('Frunze', 'Ankara 23', 3),
       ('Globus', 'Street 21', 4),
       ('Tesco', 'VDNH 2', 1),
       ('Lidl', 'Street 883', 5),
       ('Shinjuku', 'seoul street 28', 6);

create table products
(
    id           serial PRIMARY KEY,
    product_name varchar(30),
    date_of_made date,
    store_id     int references stores (id)

);
insert into products(product_name, date_of_made, store_id)
values ('Milk', '2023-07-23', 1),
       ('Bounty', '2023-07-12', 2),
       ('Bread', '2023-07-15', 3),
       ('Cake', '2023-05-23', 4),
       ('Vegatable oil', '2023-04-05', 5),
       ('Flour', '2023-04-06', 6);
alter table products
    add price INT;
create table libraries
(
    id           serial PRIMARY KEY,
    library_name varchar,
    address      varchar NOT NULL
);
insert into libraries(library_name, address)
values ('Bayalinov', 'Sovetskaya 12'),
       ('Chyngyz Aitmatov', 'Chui 32'),
       ('National Library', 'Kiev 21');
create table books
(
    id         serial PRIMARY KEY,
    book_name  varchar(20) NOT NULL,
    genre      varchar(30),
    author     varchar     NOT NULL,
    library_id int references libraries (id)
);
insert into books(book_name, genre, author, library_id)
values ('Toolor Kulaganda', 'biography', 'Chyngyz Aitmatov', 1),
       ('Martin Iden', 'drama', 'Jack London', 2),
       ('Time Managment', 'physiology', 'Brayan Traisi', 3),
       ('Djamilia', 'drama', 'Chyngyz Aitmatov', 1),
       ('Alaya Chuma', 'drama', 'Jack London', 2);

create table gadgets
(
    id   serial PRIMARY KEY,
    name varchar(50) NOT NULL

);
insert into gadgets(name)
values ('PHONES'),
       ('LAPTOP');


create table phones
(
    id            serial PRIMARY KEY,
    phone_name    varchar        NOT NULL,
    memory        INT,
    price         DECIMAL(10, 2) NOT NULL,
    years_of_made date,
    gadget_id     INT REFERENCES gadgets (id)

);
insert into phones(phone_name, memory, price, years_of_made, gadget_id)
values ('Samsung', 128, 1200.10, '2023-02-04', 1),
       ('iPhone', 256, 1300.99, '2021-05-11', 1),
       ('Nokia', 128, 1120.25, '2007-12-21', 1);
create table laptops
(
    id            serial PRIMARY KEY,
    laptop_name   varchar(40),
    price         INT NOT NULL,
    years_of_made date,
    gadget_id     INT REFERENCES gadgets (id)
);
insert into laptops(laptop_name, price, years_of_made, gadget_id)
values ('MacBook Air', 1100, '2020-08-05', 2),
       ('Lenovo', 1300, '2021-09-03', 2),
       ('Asus', 1250, '2021-06-06', 2);
select table_name from information_schema.tables where table_schema ='public';


