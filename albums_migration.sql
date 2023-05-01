USE bigfoot_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(45),
    name VARCHAR(45),
    release_date DATE NOT NULL,
    sales FLOAT(7, 2) UNSIGNED NOT NULL,
    genre VARCHAR(35),
    PRIMARY KEY (id)
);