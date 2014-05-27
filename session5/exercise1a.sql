DROP TABLE IF EXISTS Boek;
DROP TABLE IF EXISTS Exemplaar;

CREATE TABLE Boek (
	isbn varchar(255) NOT NULL UNIQUE,
	titel varchar(255),
	autheur varchar(255),
	PRIMARY KEY (isbn)
);

CREATE TABLE Exemplaar (
	isbn varchar(255) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE,
	volgnummer int,
	gewicht real,
	kast varchar(255)
);