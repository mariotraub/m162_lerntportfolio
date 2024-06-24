SELECT titel, verkaufspreis 
FROM buecher 
ORDER BY verkaufspreis DESC 
LIMIT 1;

SELECT titel, verkaufspreis 
FROM buecher 
ORDER BY verkaufspreis ASC 
LIMIT 1;

SELECT titel, einkaufspreis 
FROM buecher 
WHERE einkaufspreis > (SELECT AVG(einkaufspreis) FROM buecher);

SELECT titel, einkaufspreis FROM buecher
WHERE verkaufspreis > (SELECT AVG(einkaufspreis) FROM buecher_has_sparten bs
JOIN buecher b ON b.buecher_id = bs.buecher_buecher_id 
JOIN sparten s ON s.sparten_id = bs.sparten_sparten_id);

SELECT *  FROM buecher_has_sparten bs
JOIN buecher b ON b.buecher_id = bs.buecher_buecher_id
JOIN sparten s ON s.sparten_id = bs.sparten_sparten_id
WHERE s.bezeichnung = 'Thriller' AND einkaufspreis > (SELECT AVG(einkaufspreis) FROM buecher_has_sparten bs
JOIN buecher b ON b.buecher_id = bs.buecher_buecher_id
JOIN sparten s ON s.sparten_id = bs.sparten_sparten_id
WHERE s.bezeichnung = 'Thriller');

SELECT titel, (verkaufspreis - einkaufspreis) AS gewinn FROM buecher
WHERE (verkaufspreis - einkaufspreis) > (SELECT AVG(verkaufspreis - einkaufspreis) FROM buecher WHERE buecher_id != 22);


