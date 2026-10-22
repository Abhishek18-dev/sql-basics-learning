CREATE DATABASE IF NOT EXISTS insta;

USE insta;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS post;
CREATE TABLE IF NOT EXISTS user(
	id INT ,
    age INT ,
    name VARCHAR(30) NOT NULL,
    mail VARCHAR(50) UNIQUE,
    follower INT DEFAULT 0,
    followings INT,
    CONSTRAINT age_check CHECK (age >= 13),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS post(
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT ,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

SHOW TABLES;