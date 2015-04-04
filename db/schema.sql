DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS decks;

CREATE TABLE decks (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
);

CREATE TABLE cards (
  id serial PRIMARY KEY,
  front text,
  back text,
  times_right INT,
  times_wrong INT,
  deck_id integer REFERENCES decks(id)
);


