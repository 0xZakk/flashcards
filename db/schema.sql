DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS decks;

CREATE TABLE decks (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  score integer NOT NULL
);

CREATE TABLE cards (
  id serial PRIMARY KEY,
  front varchar(50) NOT NULL,
  back varchar(50) NOT NULL,
  deck_id integer REFERENCES decks(id)
);

