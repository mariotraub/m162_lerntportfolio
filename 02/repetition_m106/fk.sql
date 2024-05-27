ALTER TABLE tbl_disponent
ADD COLUMN mitarbeiter_id INT,
ADD CONSTRAINT mitarbeiter_id
FOREIGN KEY (mitarbeiter_id) REFERENCES tbl_mitarbeiter(MA_ID);

ALTER TABLE tbl_fahrer
ADD COLUMN mitarbeiter_id INT,
ADD CONSTRAINT mitarbeiter_id
FOREIGN KEY (mitarbeiter_id) REFERENCES tbl_mitarbeiter(MA_ID);