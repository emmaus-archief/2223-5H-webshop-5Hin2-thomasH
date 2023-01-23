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
 -- review TEXT,
  
--)


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Album 1', 'Pop album uitgebracht in 2019', '816905633-0', 21);
insert into products (name, description, code, price) values ('Album 2', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 19);
insert into products (name, description, code, price) values ('Album 3', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 20);
insert into products (name, description, code, price) values ('Album 4', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 17);
insert into products (name, description, code, price) values ('Album 5', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 25);
insert into products (name, description, code, price) values ('Album 6', 'Gezellig feest muziek', '492662523-7', 26);