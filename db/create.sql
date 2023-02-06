--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

--CREATE TABLE reviews (
--id INTEGER PRIMARY KEY AUTOINCREMENT,
--person_id INTEGER,
--review TEXT,
  
--)


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Grijze spijkerbroek', 'Pop album uitgebracht in 2019', '816905633-0', 29.99);
insert into products (name, description, code, price) values ('Blauwe spijkerbroek', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 29.99);
insert into products (name, description, code, price) values ('Zwarte cargo broek', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 24.99);
insert into products (name, description, code, price) values ('Groen shirt', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 14.99);
insert into products (name, description, code, price) values ('Witte broek', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 24.99);
insert into products (name, description, code, price) values ('Rode trui', 'Gezellig feest muziek', '492662523-7', 14.99);
insert into products (name, description, code, price) values ('Zwarte handschoenen', 'Gezellig feest muziek', '492662523-7', 4.99);
insert into products (name, description, code, price) values ('Zwarte muts', 'Gezellig feest muziek', '492662523-7', 9.99);
insert into products (name, description, code, price) values ('Groene schoenen', 'Gezellig feest muziek', '492662523-7', 71.99);
insert into products (name, description, code, price) values ('Zwarte slippers', 'Gezellig feest muziek', '492662523-7', 14.99);