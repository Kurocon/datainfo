SELECT p.name FROM Person p
WHERE EXISTS(
SELECT * FROM Writes w, Movie m, Directs d
WHERE w.pid = p.pid
AND w.mid IN (SELECT m.mid FROM Movie m, Directs d)
AND NOT w.mid IN(SELECT d.mid FROM Directs d)
);
