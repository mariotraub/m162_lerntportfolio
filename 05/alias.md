Datei name: selectAlias.sql: 
use kunden;

-- 2.2
    SELECT k.name AS Name, o.postleitzahl AS Postleitzahl, o.name AS andererName
    FROM kunden k, orte o WHERE k.name 
    LIKE '%a%' AND o.name LIKE '%u%' AND k.ort_postleitzahl = o.postleitzahl;

-- 2.1
SELECT k.kunde_id, k.name AS kunde_name, o.name AS ort_name 
FROM kunden AS k
INNER JOIN orte AS o 
ON o.postleitzahl = k.ort_postleitzahl 
ORDER BY k.kunde_id;

-- 1.2
SELECT o.name, k.name FROM orte o, kunden k 
WHERE o.name LIKE '%n' AND o.postleitzahl = k.ort_postleitzahl;

-- 1.1
SELECT kunde_id, name, ort_postleitzahl 
FROM kunden AS kundenliste 
WHERE kundenliste.ort_postleitzahl > 80000;