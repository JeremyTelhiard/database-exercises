USE codeup_test_db;
SELECT 'Names of all of Pink Floyd''s albums' AS 'Info';
SELECT record_name, artist FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT record_name, release_date FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Genre for Nevermind' AS 'Info';
SELECT record_name, genre FROM albums WHERE record_name = 'Nevermind';
SELECT 'Albums released in the 1990s' AS 'Info';
SELECT record_name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Albums with less that 20 million certified sales' AS 'Info';
SELECT record_name, sales FROM albums WHERE sales < 20000000.00;
SELECT 'All albums with the Rock genre' AS 'Info';
SELECT record_name, genre FROM albums WHERE genre = 'Rock';