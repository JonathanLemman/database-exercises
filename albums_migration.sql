USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(20),
    name VARCHAR(20),
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);