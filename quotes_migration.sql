USE codeup_test_db;
DROP TABLE albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    record_name VARCHAR(100) NOT NULL,
    release_date int(4) UNSIGNED NOT NULL,
    sales decimal(11,2) UNSIGNED NOT NULL,
    genre VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);