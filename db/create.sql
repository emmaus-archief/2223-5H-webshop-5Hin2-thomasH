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

CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  review TEXT
);

CREATE TABLE betalingen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  betaalmethode TEXT
);

CREATE TABLE bestellingen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  item TEXT,
  adres TEXT,
  betaalmethode TEXT
);

CREATE TABLE adres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  adres  TEXT
);

--)


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--


-- Producten
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

-- Reviews
insert into reviews (name, review) values ('Jacco Ren','Valt niet te groot, past precies.');
insert into reviews (name, review) values ('Roelof Looper','Mooie kleuren.');
insert into reviews (name, review) values ('Anthonie Van Wart','Valt groot haal 1 maat kleiner dan dat je hebt.');
insert into reviews (name, review) values ('Stijn Dul','Fijn materiaal makkelijk om in te bewegen.');
insert into reviews (name, review) values ('Arie Benedix','Heel erg zachte stof.');
insert into reviews (name, review) values ('Claes Mont','Precies wat ik zocht.');
insert into reviews (name, review) values ('Anthonie Goes','Hele snelle bezorging.');
insert into reviews (name, review) values ('Roelof Looper','Erg goedkoop.');
insert into reviews (name, review) values ('Anthonie Van Wart','Ik heb na mijn eerste bestelling de site gelijk aangeraden aan mijn familie.');
insert into reviews (name, review) values ('Lukas Troost','Kwam veel later binnen dan bij de tracking stond.');
insert into reviews (name, review) values ('Sven Van Hee','Ben treveden met mijn bestelling.');
insert into reviews (name, review) values ('Adriaan Napper','Precies wat ik zocht.');

-- Betalingen
insert into betalingen (name, betaalmethode) values ('Jacco Ren','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Roelof Looper','ING');
insert into betalingen (name, betaalmethode) values ('Anthonie Van Wart','ING');
insert into betalingen (name, betaalmethode) values ('Stijn Dul','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Arie Benedix','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Claes Mont','ING');
insert into betalingen (name, betaalmethode) values ('Anthonie Goes','Rabobank');
insert into betalingen (name, betaalmethode) values ('Roelof Looper','Rabobank');
insert into betalingen (name, betaalmethode) values ('Anthonie Van Wart','ING');
insert into betalingen (name, betaalmethode) values ('Lukas Troost','ING');
insert into betalingen (name, betaalmethode) values ('Sven Van Hee','ING');
insert into betalingen (name, betaalmethode) values ('Adriaan Napper','ABN AMRO');

-- Bestellingen
insert into bestellingen (name, item, adres, betaalmethode) values ('Jacco Ren', 'Grijze spijkerbroek', 'Spijkerstraat 93', 'ABN AMRO');
insert into bestellingen (name, item, adres, betaalmethode) values ('Roelof Looper', 'Groen shirt', 'Vissenlaan 34',  'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Anthonie Van Wart', 'Blauwe spijkerbroek', 'Kortlichtstraat 43', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Stijn Dul', 'Zwarte cargo broek', 'Zitbankweg 86', 'ABN AMRO');
insert into bestellingen (name, item, adres, betaalmethode) values ('Arie Benedix', 'Zwarte muts', 'Loempiastraat 103',  'ABN AMRO');
insert into bestellingen (name, item, adres, betaalmethode) values ('Claes Mont', 'Zwarte handschoenen', 'Porseleinlaan 49', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Anthonie Goes', 'Rode trui', 'Waaierweg 109',  'Rabobank');
insert into bestellingen (name, item, adres, betaalmethode) values ('Roelof Looper', 'Witte broek', 'Spookkweg  91',  'Rabobank');
insert into bestellingen (name, item, adres, betaalmethode) values ('Anthonie Van Wart', 'Zwarte slippers', 'Kattenlaan 94', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Lukas Troost', 'Groene schoenen', 'Doornweg 30',  'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Sven Van Hee', 'Witte broek', 'Kortlichstraat 41', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Adriaan Napper', 'Rode trui', 'Pyramidestraat 71',  'ABN AMRO');


-- name TEXT, items TEXT, adres TEXT, betaalmethode TEXT

-- Adres
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');
insert into adres (name, adres) values ('naam', 'adres');