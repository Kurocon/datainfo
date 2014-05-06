INSERT INTO F VALUES("ABC", "EF", TRUE, "Geen triviale FD")
INSERT INTO F VALUES("E", "D", TRUE, "Geen superkey")
INSERT INTO F VALUES("D", "A", TRUE, "Geen superkey")

INSERT INTO F1 VALUES("ABC", "E", FALSE, "")
INSERT INTO F2 VALUES("ABC", "F", FALSE, "")
INSERT INTO F2 VALUES("E", "D", TRUE, "Geen superkey")
INSERT INTO F2 VALUES("D", "A", TRUE, "Geen superkey")
