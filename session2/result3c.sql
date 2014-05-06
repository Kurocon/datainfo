SELECT p.name FROM Person p
WHERE EXISTS(
SELECT * FROM Writes w
WHERE w.pid = p.pid
AND -- movie without director
);
