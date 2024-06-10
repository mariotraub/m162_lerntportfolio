INSERT INTO Mitarbeiter (Mitarbeiter_id, Vorname, Nachname, Telefonnummer) VALUES
(1, 'Hans', 'Muster', '+41 76 764 23 23'),
(2, 'Theo', 'Dohr', '+41 79 324 55 78'),
(3, 'Justin', 'Biber', '+41 79 872 12 32'),
(4, 'Johann S.', 'Fluss', '+41 79 298 98 76'),
(5, 'Diana', 'Knecht', '+41 78 323 77 00'),
(6, 'Anna', 'Schöni', '+41 76 569 67 80'),
(8, 'Lucy', 'Schmidt', '+49 420 232 2232'),
(9, 'Ardit', 'Azubi', NULL);

INSERT INTO Mitarbeiter(Mitarbeiter_id, vorname, nachname, boss) VALUES 
(10, 'Justin', 'Biber', NULL),
(11, 'Anna', 'Schöni', 10),
(12, 'Theo', 'Dohr', 10);

INSERT INTO Mitarbeiter(nachname, boss) VALUES 
('Schmidt', 11),
('Muster', 11),
('Knecht', 12),
('Fluss', 12),
('Muster', 12);

INSERT INTO hierarchy VALUES
(3, 6),
(3, 2),
(6, 8),
(6, 1),
(2, 5),
(2, 4);