USE Tourplaner;

INSERT INTO kunden VALUES
(NULL, 'Heinrich', 'Schmitt', 2, 'Zürich'),
(NULL, 'Sabine', 'Müller', 2, 'Bern'),
(NULL, 'Markus', 'Mustermann', 1, 'Wien');

INSERT INTO kunden(nachname) VALUES('Maier');


INSERT INTO kunden(nachname, wohnort) VALUES
('Bulgur', 'Sirnach');

INSERT INTO kunden(vorname, nachname) VALUES
('Mario', 'Manta');

-- INSERT INTO (nachname, wohnort, land_id) VALUES ('Fesenkampp', 'Duis-burg', 3);
INSERT INTO kunden(nachname, wohnort, land_id) VALUES ('Fesenkampp', 'Duis-burg', 3);

-- INSERT INTO kunden ('vorname') VALUES ('Herbert');
INSERT INTO kunden (vorname) VALUES ('Herbert');

-- INSERT INTO kunden (nachname, vorname, wohnort, land_id) VALUES ('Schulter', 'Albert', 'Duisburg', 'Deutschland');
INSERT INTO kunden(nachname, vorname, wohnort, land_id) VALUES ('Schulter', 'Albert', 'Duisburg', 4);

-- INSERT INTO kunden ('', 'Brunhild', 'Sulcher', 1, 'Süderstade');
INSERT INTO kunden VALUES (NULL, 'Brunhild', 'Sulcher', 1, 'Süderstade');

-- INSERT INTO kunden VALUES ('Jochen', 'Schmied', 2, 'Solingen');
INSERT INTO kunden VALUES (NULL, 'Jochen', 'Schmied', 2, 'Solingen');

-- INSERT INTO kunden VALUES ('', 'Doppelbrecher', 2, '');
INSERT INTO kunden VALUES(NULL, '', 'Doppelbecher', 2, '');

-- INSERT INTO kunden (nachname, wohnort, land_id) VALUES ('Christoph', 'Fesenkampp', 'Duisburg', 3);
INSERT INTO kunden(vorname, nachname, wohnort, land_id) VALUES ('Christoph', 'Fesenkampp', 'Duisburg', 3);

-- INSERT INTO kunden (vorname) VALUES ('Herbert');
INSERT INTO kunden (vorname) VALUES ('Herbert');

-- INSERT INTO kunden (nachname, vorname, wohnort, land_id) VALUES (Schulter, Albert, Duisburg, 1);
INSERT INTO kunden (nachname, vorname, wohnort, land_id) VALUES ('Schulter', 'Albert', 'Duisburg', 1);

-- INSERT INTO kunden VALUE ('', "Brunhild", "Sulcher", 1, "Süderstade");
INSERT INTO kunden VALUES (NULL,"Brunhild", "Sulcher", 1, "Süderstade");


-- INSERT INTO kunden VALUE ('', 'Jochen', 'Schmied', 2, Solingen);
INSERT INTO kunden VALUES (NULL, 'Jochen', 'Schmied', 2, 'Solingen');
