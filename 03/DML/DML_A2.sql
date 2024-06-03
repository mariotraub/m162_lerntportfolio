UPDATE dvd_sammlung
SET regisseur = 'Etan Cohen'
WHERE regisseur = 'Cohen';

UPDATE dvd_sammlung
SET laenge_minuten = 120
WHERE film = 'Angst';

ALTER TABLE dvd_sammlung RENAME TO bluray_sammlung;

ALTER TABLE bluray_sammlung ADD COLUMN preis DECIMAL(10, 2) DEFAULT NULL;

DELETE FROM bluray_sammlung
WHERE film = 'Angriff auf Rom' AND regisseur = 'Steven Burghofer';

ALTER TABLE bluray_sammlung CHANGE COLUMN film kinofilme VARCHAR(255);

ALTER TABLE bluray_sammlung DROP COLUMN nummer;

DROP TABLE bluray_sammlung;
