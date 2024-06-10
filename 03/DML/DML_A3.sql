SELECT * FROM dvd_sammlung;


SELECT film, nummer FROM dvd_sammlung;


SELECT film, regisseur FROM dvd_sammlung;


SELECT film FROM dvd_sammlung WHERE regisseur = 'Quentin Tarantino';


SELECT film FROM dvd_sammlung WHERE regisseur = 'Steven Spielberg';


SELECT film FROM dvd_sammlung WHERE regisseur LIKE 'Steven%';


SELECT film FROM dvd_sammlung WHERE laenge_minuten > 120;


SELECT film FROM dvd_sammlung WHERE regisseur IN ('Quentin Tarantino', 'Steven Spielberg');


SELECT film FROM dvd_sammlung WHERE regisseur = 'Quentin Tarantino' AND laenge_minuten < 90;


SELECT film FROM dvd_sammlung WHERE film LIKE '%Sibirien%';


SELECT film FROM dvd_sammlung WHERE film LIKE 'Das große Rennen%';


SELECT * FROM dvd_sammlung ORDER BY regisseur;


SELECT * FROM dvd_sammlung ORDER BY regisseur, film;


SELECT film FROM dvd_sammlung WHERE regisseur = 'Quentin Tarantino' ORDER BY laenge_minuten DESC;
