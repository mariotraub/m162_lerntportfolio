CREATE TABLE IF NOT EXISTS tbl_mitarbeiter (
    MA_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Vorname VARCHAR(30),
    Geburtsdatum DATETIME,
    Telefonnummer VARCHAR(12),
    Einkommen FLOAT(10, 2)
)