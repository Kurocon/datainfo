DROP TRIGGER boek_delete_exemplaren ON Boek;
DROP FUNCTION delete_exemplaar();
DROP TABLE IF EXISTS Boek;
DROP TABLE IF EXISTS Exemplaar;

CREATE TABLE Boek (
	isbn varchar(255) NOT NULL UNIQUE,
	titel varchar(255),
	autheur varchar(255),
	PRIMARY KEY (isbn)
);

CREATE TABLE Exemplaar (
	isbn varchar(255) REFERENCES Boek(isbn) ON UPDATE CASCADE,
	volgnummer int,
	gewicht real,
	kast varchar(255)
);

CREATE FUNCTION delete_exemplaar() RETURNS trigger AS 
$BODY$
BEGIN
	DELETE FROM Exemplaar e WHERE e.isbn = OLD.isbn;
END;
$BODY$ LANGUAGE PLPGSQL;

CREATE TRIGGER boek_delete_exemplaren BEFORE DELETE ON Boek
FOR EACH ROW 
EXECUTE PROCEDURE delete_exemplaar();