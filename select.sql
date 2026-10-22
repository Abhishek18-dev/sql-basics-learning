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

SELECT name ,mail, follower
FROM user
WHERE mail IN ("adam4@yahoo.in","adam2@yahoo.in","abc@yahoo.in");

SELECT name ,age, follower
FROM user
WHERE age IN (14 ,16);


SELECT name ,age, follower
FROM user
WHERE age NOT IN (14 ,16);


SELECT name ,age, follower
FROM user
WHERE age >14
LIMIT 2;  



SELECT *
FROM user
ORDER BY follower;

SELECT *
FROM user
ORDER BY follower ASC;

SELECT *
FROM user
ORDER BY follower DESC;


SELECT max(age)
FROM user;

SELECT min(age)
FROM user;
SELECT avg(age)
FROM user;
SELECT sum(following)
FROM user;
SELECT count(age)
FROM user
WHERE age > 14;



SELECT count(id)
FROM user
GROUP BY age;


SELECT age , count(id)
FROM user
GROUP BY age;

SELECT age , max(follower)
FROM user
GROUP BY age;


SELECT age , max(follower)
FROM user
GROUP BY age
HAVING max(follower) > 115;

SELECT age , max(follower)
FROM user
GROUP BY age
HAVING max(follower) > 115
ORDER BY max(follower) DESC;

SELECT age , max(follower)
FROM user
GROUP BY age
HAVING max(follower) > 115
ORDER BY age DESC;

