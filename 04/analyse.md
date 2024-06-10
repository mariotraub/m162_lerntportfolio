# Erstellen Sie einen allgemeinen Syntax für die CONSTRAINT-Anweisung.

```SQL
CREATE TABLE IF NOT EXISTS `table_name` (
  `primary_key_column` INT PRIMARY KEY AUTO_INCREMENT,
  `column1` VARCHAR(30) NOT NULL,
  `column2` DECIMAL(10) NULL,
  `foreign_key_column` INT NOT NULL,
  CONSTRAINT `fk_table`
    FOREIGN KEY (`fk_column`)
    REFERENCES `table_name` (`primary_key_colmn`));
```
    
# Wie wird beim Fremdschlüssel der Constraint NOT NULL erstellt?

```SQL
CONSTRAINT `fk_referenced_table`
    FOREIGN KEY (`referenced_table_ID`)
    REFERENCES 
    `referenced_table` (`ID`)
    NOT NULL
```
# Weshalb wird für jeden Fremdschlüssel ein Index erstellt?
1. Um Abfragen zu beschleunigen.
2. Um Datenintegrität zu sichern.
3. Um Skalierbarkeit zu verbessern.

# Wie wird der Constraint UNIQUE für ein Fremdschlüssel in Workbench mit Forward Engineering erstellt?
```SQL
CREATE TABLE IF NOT EXISTS `mydb`.`tbl_Ausweis` (
  `ID_Ausweis` INT NOT NULL,
  `Nummer` VARCHAR(30) NULL DEFAULT NULL,
  `Art` INT NULL DEFAULT NULL,
  `tbl_Fahrer_ID_Fahrer` INT NOT NULL,
  PRIMARY KEY (`ID_Ausweis`),
  INDEX `fk_tbl_Ausweis_tbl_Fahrer1_idx` (`tbl_Fahrer_ID_Fahrer` ASC) VISIBLE,
  INDEX `fk_tbl_Ausweis_tbl_Fahrer1` (`tbl_Fahrer_ID_Fahrer` ASC) VISIBLE,
  -- jeder Fahrer darf nur einen Ausweis besitzen
  UNIQUE INDEX `tbl_Fahrer_ID_Fahrer_UNIQUE` (`tbl_Fahrer_ID_Fahrer` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_Ausweis_tbl_Fahrer1`
    FOREIGN KEY (`tbl_Fahrer_ID_Fahrer`)
    REFERENCES `mydb`.`tbl_Fahrer` (`ID_Fahrer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
```
