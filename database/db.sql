CREATE DATABASE agenda_KG;

USE agenda_KG;
-- TABLE USER
-- all pasword wil be encrypted using SHA1
CREATE TABLE users (
  id INT(11) NOT NULL,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(60) NOT NULL,
  fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
  ADD PRIMARY KEY (id);

ALTER TABLE users
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE users;

INSERT INTO users (id, username, password, fullname) 
  VALUES (1, 'john', 'password1', 'John Carter');

SELECT * FROM users;

-- LINKS TABLE
CREATE TABLE links (
  id INT(11) NOT NULL,
  title VARCHAR(150) NOT NULL,
  url VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INT(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

ALTER TABLE links
  ADD PRIMARY KEY (id);

ALTER TABLE links
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE links;

-- PRODUCTS TABLE

CREATE TABLE products (
  id INT(11) NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  tipo VARCHAR(30) NOT NULL,
  cantidad int (9) NOT NULL,
  marca VARCHAR(40) NOT NULL,
  description TEXT NOT NULL,
  imagen VARCHAR(150) NOT NULL,
  user_id INT (11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user6 FOREIGN KEY(user_id) REFERENCES users(id)
);

ALTER TABLE products
  ADD PRIMARY KEY (id);

ALTER TABLE products
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE products;
