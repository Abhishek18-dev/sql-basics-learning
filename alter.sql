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

INSERT INTO user
(id , age ,name )
VALUES
(2 , 15 , "random" );

INSERT INTO user
(id , age  )
VALUES
(2 , 15  );

INSERT INTO user
(id , age ,name )
VALUES
(2 , 10,"random");


INSERT INTO user
(id , age ,name, mail)
VALUES
(20 , 15 , "random"  , "adam3@yahoo.in" );



INSERT INTO user
(id , age ,name , mail ,follower , followings)
VALUES
(1 , 14 , "adam" , "adam@yahoo.in" , 123 , 145 ),
(2 , 15 , "adam2" , "adam2@yahoo.in" , 12 , 1445),
(3 , 15 , "adam3" , "adam3@yahoo.in" , 112 , 144),
(4 , 16 , "adam4" , "adam4@yahoo.in" , 1233 , 15);

INSERT INTO user
(id , age ,name , mail ,follower , followings)
VALUES
(5 , 17 , "adam5" , "adam5@yahoo.in" , 300 , 1000),
(6 , 16 , "adam6" , "adam6@yahoo.in" , 200 , 10000);





CREATE TABLE IF NOT EXISTS post(
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT ,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

SHOW TABLES;

SELECT * FROM post;
SELECT * FROM user;

SELECT id , name , age from user;

SELECT DISTINCT age from user;



SELECT *
FROM user
WHERE follower > 115;

SELECT name ,follower
FROM user
WHERE follower > 115;

SELECT name ,age
FROM user
WHERE age <= 15;


SELECT name ,age
FROM user
WHERE age + 1 = 15;

SELECT name , age , follower
FROM user
WHERE age > 15 AND follower >115;

SELECT name , age , follower
FROM user
WHERE age > 15 OR follower >115;


SELECT name , age , follower
FROM user
WHERE age BETWEEN 14 AND 15;




SELECT name ,age, follower
FROM user
WHERE age NOT IN (14 ,16);





SET SQL_SAFE_UPDATES = 0;

UPDATE user
SET follower = 600
WHERE age >15;

SELECT * FROM user;


DELETE FROM user
WHERE age = 17;

SELECT * FROM user;




ALTER TABLE user
ADD COLUMN city VARCHAR(30) DEFAULT "delhi";

ALTER TABLE user
DROP COLUMN city;

ALTER TABLE user
RENAME TO instaUser;

ALTER TABLE instaUser
RENAME TO user;

ALTER TABLE user 
CHANGE COLUMN follower followers INT DEFAULT 5;


INSERT INTO user 
(id , age , name , mail , followings)
VALUES
(7 , 19 , "adam7" , "adam7@gmail.com" , 1500);


ALTER TABLE user
MODIFY followers INT DEFAULT 0;





SELECT * FROM user;