DROP TABLE IF EXISTS Bestellingen;

CREATE TABLE Bestellingen (
	isbn varchar(255) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE,
	aantal int
);

DROP TRIGGER IF EXISTS boek_add_bestelling ON Boek;
DROP FUNCTION IF EXISTS check_authors();

CREATE FUNCTION check_authors() RETURNS trigger AS 
$BODY$
BEGIN
	IF (SELECT COUNT(*) FROM Boek b WHERE b.autheur = NEW.autheur) = 1 THEN
		INSERT INTO Bestellingen (isbn, aantal)
		VALUES (NEW.isbn, 1);
	END IF;
	RETURN NULL;
END;
$BODY$ LANGUAGE PLPGSQL;

CREATE TRIGGER boek_add_bestelling AFTER INSERT ON Boek
FOR EACH ROW
EXECUTE PROCEDURE check_authors();