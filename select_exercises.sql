USE bigfoot_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT release_date FROM albums WHERE name = 'Sgt Peppers Lonely Hearts Club Band';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums Where genre = 'Rock';
