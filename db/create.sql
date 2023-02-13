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
insert into products (name, description, code, price) values ('Grijze spijkerbroek', 'Slim fit spijkerbroek', '816905633-0', 29.99);
insert into products (name, description, code, price) values ('Blauwe spijkerbroek', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 29.99);
insert into products (name, description, code, price) values ('Zwarte cargo broek', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 24.99);
insert into products (name, description, code, price) values ('Groen shirt', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 14.99);
insert into products (name, description, code, price) values ('Gele trui', 'Gezellig feest muziek', '492662523-7', 29.99);
insert into products (name, description, code, price) values ('Witte broek', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 24.99);
insert into products (name, description, code, price) values ('Rode trui', 'Gezellig feest muziek', '492662523-7', 14.99);
insert into products (name, description, code, price) values ('Witte sokken', 'Gezellig feest muziek', '492662523-7', 4.99);
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
insert into reviews (name, review) values ('Mark den Bos','Erg goedkoop.');
insert into reviews (name, review) values ('Sharinda van der Luit','Ik heb na mijn eerste bestelling de site gelijk aangeraden aan mijn familie.');
insert into reviews (name, review) values ('Lukas Troost','Kwam veel later binnen dan bij de tracking stond.');
insert into reviews (name, review) values ('Sven Van Hee','Ben treveden met mijn bestelling.');
insert into reviews (name, review) values ('Adriaan Napper','Precies wat ik zocht.');

-- Betalingen
insert into betalingen (name, betaalmethode) values ('Jacco Ren','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Roelof Looper','Rabobank');
insert into betalingen (name, betaalmethode) values ('Anthonie Van Wart','ING');
insert into betalingen (name, betaalmethode) values ('Stijn Dul','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Arie Benedix','ABN AMRO');
insert into betalingen (name, betaalmethode) values ('Claes Mont','ING');
insert into betalingen (name, betaalmethode) values ('Anthonie Goes','Rabobank');
insert into betalingen (name, betaalmethode) values ('Mark den Bos','ING');
insert into betalingen (name, betaalmethode) values ('Sharinda van der Luit','ING');
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
insert into bestellingen (name, item, adres, betaalmethode) values ('Mark den Bos', 'Witte broek', 'Spokenweg 54',  'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Sharinda van der Luit', 'Zwarte slippers', 'Kattenlaan 94', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Lukas Troost', 'Groene schoenen', 'Doornweg 30',  'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Sven Van Hee', 'Witte broek', 'Kortlichstraat 41', 'ING');
insert into bestellingen (name, item, adres, betaalmethode) values ('Adriaan Napper', 'Rode trui', 'Pyramidestraat 71',  'ABN AMRO');


-- name TEXT, items TEXT, adres TEXT, betaalmethode TEXT

-- Adres
insert into adres (name, adres) values ('Jacco Ren', 'Spijkerstraat 93');
insert into adres (name, adres) values ('Roelof Looper', 'Vissenlaan 34');
insert into adres (name, adres) values ('Anthonie Van Wart', 'Kortlichtstraat 43');
insert into adres (name, adres) values ('Stijn Dul', 'Zitbankweg 86');
insert into adres (name, adres) values ('Arie Benedix', 'Loempiastraat 103');
insert into adres (name, adres) values ('Claes Mont', 'Porseleinlaan 49');
insert into adres (name, adres) values ('Anthonie Goes', 'Waaierweg 109');
insert into adres (name, adres) values ('Mark den Bos', 'Spokenweg 54');
insert into adres (name, adres) values ('Sharinda van der Luit', 'Kattenlaan 94');
insert into adres (name, adres) values ('Lukas Troost', 'Doornweg 30');
insert into adres (name, adres) values ('Sven Van Hee', 'Kortlichstraat 41');
insert into adres (name, adres) values ('Adriaan Napper', 'Pyramidestraat 71');