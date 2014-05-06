SELECT p.name FROM Person p
WHERE p.pid IN (
	SELECT w.pid
	FROM Writes w, Movie m, Directs d
	WHERE w.mid IN (
		SELECT m.mid
		FROM Movie m, Directs d)
	AND NOT w.mid IN(
		SELECT d.mid
		FROM Directs d)
);
