--
-- create tables
--

-- koppel de id's tussen de tabellen

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
  review TEXT,
  product_id INTEGER
);

CREATE TABLE bestellingen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  item TEXT,
  adres_id INTEGER,
  betaalmethode_id integer
);

CREATE TABLE adres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  adres TEXT
);

CREATE TABLE personen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  betaalmethodes
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
insert into products (name, description, code, price) values ('Grijze spijkerbroek', 'Slim fit spijkerbroek.', '816905633-0', 29.99);
insert into products (name, description, code, price) values ('Blauwe spijkerbroek', 'Loose fit spijkerbroek.', '077030122-3', 29.99);
insert into products (name, description, code, price) values ('Zwarte cargo broek', 'Loose fit cargo met veel zakken.', '445924201-X', 24.99);
insert into products (name, description, code, price) values ('Groen shirt', 'Slim fit shirt met uitrekbare stof.', '693155505-7', 14.99);
insert into products (name, description, code, price) values ('Gele trui', 'Relaxed fit trui van zachte stof.', '492662523-7', 29.99);
insert into products (name, description, code, price) values ('Witte broek', 'Tapered fit broek met pijpen op enkelhoogte.', '686928463-6', 24.99);
insert into products (name, description, code, price) values ('Rode trui', 'Relaxed fit trui van zachte stof.', '492662523-7', 14.99);
insert into products (name, description, code, price) values ('Witte sokken', 'Lange sokken van katoen.', '492662523-7', 4.99);
insert into products (name, description, code, price) values ('Zwarte handschoenen', 'Elastische handschoenen van katoen.', '492662523-7', 4.99);
insert into products (name, description, code, price) values ('Zwarte muts', 'Muts met gemêleerd patroon.', '492662523-7', 9.99);
insert into products (name, description, code, price) values ('Groene schoenen', 'Schoenen met dikke zolen.', '492662523-7', 71.99);
insert into products (name, description, code, price) values ('Zwarte slippers', 'Badslippers voor in de zomer of zwembad.', '492662523-7', 14.99);

-- Reviews
insert into reviews (name, review, product_id) values ('Jacco Ren','Valt niet te groot, past precies.', 1);
insert into reviews (name, review, product_id) values ('Roelof Looper','Mooie kleuren.', 4);
insert into reviews (name, review, product_id) values ('Anthonie Van Wart','Niet dezelfde kleur als op de foto.', 2);
insert into reviews (name, review, product_id) values ('Stijn Dul','Fijn materiaal makkelijk om in te bewegen.', 3);
insert into reviews (name, review, product_id) values ('Arie Benedix','Heel erg zachte stof.', 10);
insert into reviews (name, review, product_id) values ('Claes Mont','Precies wat ik zocht.', 9);
insert into reviews (name, review, product_id) values ('Anthonie Goes','Hele snelle bezorging.', 7);
insert into reviews (name, review, product_id) values ('Mark den Bos','Erg goedkoop.', 6);
insert into reviews (name, review, product_id) values ('Sharinda van der Luit','Ik heb na mijn eerste bestelling de site gelijk aangeraden aan mijn familie.', 12);
insert into reviews (name, review, product_id) values ('Lukas Troost','Kwam veel later binnen dan bij de tracking stond.', 11);
insert into reviews (name, review, product_id) values ('Sven Van Hee','Ben treveden met mijn bestelling.', 6);
insert into reviews (name, review, product_id) values ('Adriaan Napper','Precies wat ik zocht.', 7);
insert into reviews (name, review, product_id) values ('Anthonie Van Wart','Past goed.', 11);
insert into reviews (name, review, product_id) values ('Sharinda van der Luit','Valt precies goed.', 10);


-- Bestellingen
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Jacco Ren', 'Grijze spijkerbroek', 1, 2);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Roelof Looper', 'Groen shirt', 2, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Anthonie Van Wart', 'Blauwe spijkerbroek', 3, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Stijn Dul', 'Zwarte cargo broek', 4, 2);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Arie Benedix', 'Zwarte muts', 5, 2);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Claes Mont', 'Zwarte handschoenen', 6, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Anthonie Goes', 'Rode trui', 7, 3);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Mark den Bos', 'Witte broek', 8, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Sharinda van der Luit', 'Zwarte slippers', 9, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Lukas Troost', 'Groene schoenen', 10, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Sven Van Hee', 'Witte broek', 11, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Adriaan Napper', 'Rode trui', 12, 2);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Anthonie Van Wart', 'Groene schoenen', 3, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Sharinda van der Luit', 'Zwarte muts', 9, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Stijn Dul', 'Blauwe spijkerbroek', 4, 2);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Sven Van Hee', 'Grijze spijkerbroek', 11, 1);
insert into bestellingen (name, item, adres_id, betaalmethode_id) values ('Roelof Looper', 'Rode trui', 2,  1);

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

insert into personen (betaalmethodes) values ('ING');
insert into personen (betaalmethodes) values ('ABN AMRO');
insert into personen (betaalmethodes) values ('Rabobank');