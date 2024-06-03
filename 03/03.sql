ALTER TABLE Tour 
ADD COLUMN FK_Start INT,
ADD FOREIGN KEY(FK_Start) 
REFERENCES Ortschaft(Ortschaft_id);

ALTER TABLE Tour 
ADD COLUMN FK_End INT,
ADD FOREIGN KEY(FK_End) 
REFERENCES Ortschaft(Ortschaft_id);

ALTER TABLE Mitarbeiter
ADD COLUMN boss INT,
ADD FOREIGN KEY(boss)
REFERENCES Mitarbeiter(Mitarbeiter_id);


CREATE TABLE hierarchy(
    FK_Boss INT NOT NULL,
    FK_Mitarbeiter INT NOT NULL,

    PRIMARY KEY(FK_Boss, FK_Mitarbeiter),
    FOREIGN KEY(FK_Boss) REFERENCES Mitarbeiter(Mitarbeiter_id),
    FOREIGN KEY(FK_Mitarbeiter) REFERENCES Mitarbeiter(Mitarbeiter_id)
);