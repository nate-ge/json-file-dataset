CREATE DATABASE testdb;
USE testdb;

CREATE TABLE test_tbl(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
author VARCHAR(40) NOT NULL,
submission_date DATE,
PRIMARY KEY ( id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO test_tbl
(title, author, submission_date)
VALUES
("学习 PHP", "GS", NOW());

SELECT * FROM test_tbl;

UPDATE test_tbl SET title='学习 C++' WHERE id=1;

SELECT * FROM test_tbl;

DELETE FROM test_tbl WHERE id=1;

SELECT * FROM test_tbl;

DROP DATABASE testdb;