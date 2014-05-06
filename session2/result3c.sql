SELECT p.name FROM Person p
WHERE EXISTS(
SELECT * FROM Writes w
WHERE w.pid = p.pid
AND EXISTS(
SELECT * FROM Movie m
WHERE m.mid = w.mid
AND NOT EXISTS(
SELECT * FROM Directs d
WHERE d.mid = m.mid
)
)
);
