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

INSERT INTO post
(id , user_id , content)
VALUES
(101, 3 , "HELLO WORLD"),
(102, 1 , "Bye bye"),
(103, 3 , "HELLO DElta");




SHOW TABLES;

SELECT * FROM post;
SELECT * FROM user;

SELECT id , name , age from user;

SELECT DISTINCT age from user;


