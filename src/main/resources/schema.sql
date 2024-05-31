create table netology.CUSTOMERS
(
    id           serial  not null,
    name         varchar not null,
    surname      varchar not null,
    age          integer not null,
    phone_number varchar unique,
    constraint   "CUSTOMERS_pk" primary key (id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Iliya', 'Muromets', 33, '+7(977)-777-77-71');
insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Dobrinya', 'Nikitich', 29, '+7(977)-777-77-72');
insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Popvich', 22, '+7(977)-777-77-73');

create table netology.ORDERS
(
    id           serial  not null,
    date         date    not null,
    customer_id  integer not null,
    product_name varchar not null,
    amount       pg_catalog.money,
    constraint "ORDERS_pk"
        primary key (id),
    constraint "ORDERS_customers__fk"
        foreign key (customer_id) references netology.customers (id)
);

insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-01', 1, 'Bulova', 9999);
insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-02', 2, 'Shield', 8000);
insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-03', 3, 'Sword', 1200);
insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-04', 1, 'White horse', 1000);
insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-04', 2, 'Black horse', 1500);
insert into netology.orders (date, customer_id, product_name, amount)
VALUES ('2024-01-04', 3, 'Gray horse', 2000);