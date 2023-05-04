USE bigfoot_test_db;

DESCRIBE albums;

ALTER TABLE albums ADD UNIQUE unique_artist_name (artist, name);

SHOW INDEXES FROM albums;