SELECT p.name FROM Person p
WHERE EXISTS(
SELECT * FROM Writes w
WHERE w.pid = p.pid
AND EXISTS(
SELECT * FROM Movie m, Directs d
WHERE m.mid = w.mid
AND NOT m.mid IN(SELECT d.mid FROM Directs d)
)
);
