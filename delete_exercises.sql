USE codeup_test_db;

-- Albums released after 1991
SELECT 'Released after 1991' AS 'Albums';
DELETE FROM albums WHERE release_date > 1991;
-- Albums with the genre 'disco'
SELECT 'Genre ''disco''' AS 'Albums';
DELETE FROM albums WHERE genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Whitney Houston' AS 'Albums';
DELETE FROM albums WHERE artist = 'Whitney Houston';