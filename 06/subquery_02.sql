SELECT SUM(avg_einkaufspreis) AS sum_avg_einkaufspreis FROM
(
	SELECT AVG(b.einkaufspreis) AS avg_einkaufspreis FROM buecher b 
	JOIN buecher_has_sparten bs ON bs.buecher_buecher_id = b.buecher_id
	JOIN sparten s ON bs.sparten_sparten_id = s.sparten_id
	WHERE s.bezeichnung <> 'Humor'
	GROUP BY s.sparten_id, s.bezeichnung
	HAVING avg_einkaufspreis > 10
	) AS subquery;

SELECT COUNT(*) AS bekannte_autoren_count
FROM (
    SELECT autoren_autoren_id, COUNT(buecher_buecher_id) AS buch_count
    FROM autoren_has_buecher
    GROUP BY autoren_autoren_id
    HAVING buch_count > 4
) AS subquery;

SELECT v.name AS verlag_name, AVG(b.verkaufspreis - b.einkaufspreis) AS avg_gewinn
FROM verlage v
INNER JOIN buecher b ON v.verlage_id = b.verlage_verlage_id
GROUP BY v.verlage_id, v.name
HAVING avg_gewinn < 10;
