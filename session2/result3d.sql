SELECT p.name FROM Person p, Writes w
WHERE p.pid = w.pid
AND NOT EXISTS(
	SELECT * FROM Movie m, Directs d, Writes w1
	WHERE m.mid = d.mid
	AND m.mid = w1.mid
	AND p.pid = w1.pid
);
