CREATE TABLE books(
  id serial,
  label_id int,
  publish_date date,
  archived boolean,
  publisher varchar(20),
  cover_state varchar(10),
  PRIMARY KEY(id),
  FOREIGN KEY (label_id) REFERENCES labels (id)
);

CREATE TABLE labels(
  id serial,
  title varchar(20),
  color varchar(20),
  book_id int,
  PRIMARY KEY(id)
);