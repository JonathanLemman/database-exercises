USE codeup_test_db;

-- All albums in your table.
SELECT * FROM albums;
UPDATE albums
SET sales = (sales * 10);


-- All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';