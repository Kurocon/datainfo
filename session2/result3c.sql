SELECT p.name FROM Person p
WHERE p.pid IN(
	SELECT w.pid FROM Writes w
	WHERE w.mid NOT IN(
		SELECT d.mid FROM Directs d));
