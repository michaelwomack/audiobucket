CREATE TABLE Users(
  id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  email VARCHAR(50) UNIQUE,
  password VARCHAR(200),
  date_created DATETIME,
  is_active BOOLEAN,
  artist_id BIGINT
);

CREATE TABLE Artists(
  id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(100),
  bio VARCHAR(500)
);

CREATE TABLE Albums(
  id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(100),
  description VARCHAR(200),
  releaseDate DATE,
  artist_id BIGINT
);

CREATE TABLE Tracks(
  id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(100),
  album_id BIGINT,
  artist_id BIGINT,
  description VARCHAR(200),
  url VARCHAR(100),
  type VARCHAR(50)
);