# Gesucht sind alle Lieferanten, die ihren Sitz in Freiburg haben. Geben Sie Lieferantenname, Lieferantenort und Postleitzahl aus.

```SQL
SELECT l.name, o.name, o.postleitzahl 
FROM lieferanten l JOIN orte o ON l.orte_orte_id = o.orte_id 
WHERE o.name = 'Freiburg';
```

# Gesucht sind alle Verlage, die ihren Sitz in München haben. Geben Sie Verlagsname und Verlagsort aus.

```SQL
SELECT v.name, o.name FROM verlage v 
JOIN orte o WHERE o.name = 'München';
```

# Gesucht sind alle Bücher, die im Verlag Assal erschienen sind. Geben Sie Buchtitel, Erscheinungsjahr und Verlagsname aus, absteigend sortiert nach Erscheinungsjahr.

```SQL
SELECT b.titel, b.erscheinungsjahr, v.`name` FROM buecher b JOIN verlage v ON b.verlage_verlage_id = v.verlage_id
WHERE v.`name` = 'Assal' ORDER BY b.erscheinungsjahr DESC;
```

# Gesucht sind alle Bücher des Lieferanten Schustermann. Geben Sie Buchtitel und Lieferantenname aus.

```SQL
SELECT b.titel, l.`name` FROM buecher_has_lieferanten bl
JOIN buecher b ON bl.buecher_buecher_id = b.buecher_id 
JOIN lieferanten l ON bl.lieferanten_lieferanten_id = l.lieferanten_id 
WHERE l.`name` = 'Schustermann';
```

# Gesucht sind alle Thriller. Geben Sie Buchtitel und Sparte aus, sortiert nach Buchtitel.

```SQL
SELECT b.titel, s.bezeichnung FROM buecher_has_sparten bs 
JOIN buecher b ON bs.buecher_buecher_id = b.buecher_id 
JOIN sparten s ON bs.sparten_sparten_id = s.sparten_id 
WHERE s.bezeichnung = 'Thriller' ORDER BY b.titel;
```

# Gesucht sind alle Liebesromane. Geben Sie Buchtitel, Sparte und Verlagsname aus, sortiert nach Buchtitel aufsteigend.

```SQL
SELECT b.titel, s.bezeichnung, v.`name` FROM buecher_has_sparten bs 
JOIN sparten s ON bs.sparten_sparten_id = s.sparten_id 
JOIN buecher b ON bs.buecher_buecher_id = b.buecher_id 
JOIN verlage v ON b.verlage_verlage_id = v.verlage_id
WHERE s.bezeichnung = 'Liebe' ORDER BY b.titel asc;
```



