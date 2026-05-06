-- creating a new table in our database 	
CREATE TABLE bands(
--coloumnName dataType constraints
	band_name VARCHAR(255) NOT NULL,
	genre VARCHAR(255),
	id SERIAL PRIMARY KEY 
);

SELECT * FROM bands;


INSERT INTO bands(band_name,genre)
VALUES('The Beatles','Rock');

INSERT INTO bands(band_name,genre)
VALUES('The KHeatles','Rock');

-- AND OR
SELECT * FROM bands;
WHERE genre = 'Rock' AND band_name ='The Beatles';

SELECT * FROM bands
WHERE band_name ILIKE '%k%';



CREATE TABLE songs(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	length INTEGER, 
	band_id INTEGER REFERENCES bands(id)	
);


