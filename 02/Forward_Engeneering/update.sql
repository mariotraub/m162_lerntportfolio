CREATE TABLE IF NOT EXISTS tbl_ma (
    disponent_id INT,
    fahrer_id INT,

    FOREIGN KEY (disponent_id) REFERENCES Disponent(Disponent_id),
    FOREIGN KEY (fahrer_id) REFERENCES Fahrer(fahrer_id)
);

ALTER TABLE tbl_ma ADD COLUMN Name VARCHAR(45);