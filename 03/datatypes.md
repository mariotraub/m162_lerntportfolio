Hier ist die ausgefüllte Tabelle mit den entsprechenden SQL-Datentypen für MariaDB (MySQL):

| Datentyp | MariaDB (MySQL) | Beispiel | Bemerkung / Einstellungen |
|----|----|----|----| 
| Ganze Zahlen | INT(M) | INT(7) | M=Gesamte Anzahl Stellen |
| Natürliche Zahlen | UNSIGNED INT(M) | UNSIGNED INT(7) | Natürliche Zahlen sind immer positiv |
| Festkommazahlen <br> (Dezimalzahlen) | DECIMAL(M,D) | DECIMAL(6,2) <br> 1234.56 | M=Gesamte Anzahl Stellen <br> D=Nachkommastellen |
| Aufzählungstypen | ENUM | ENUM('Wert1', 'Wert2') | Liste von vordefinierten Werten |
| Boolean (logische Werte) | TINYINT(1) | TINYINT(1) | 0 für FALSE, 1 für TRUE |
| Zeichen (einzelnes Zeichen) | CHAR(1) | CHAR(1) | Feste Länge von einem Zeichen |
| Gleitkommazahlen | FLOAT(M,D) | FLOAT(7,3) | M=Gesamte Anzahl Stellen <br> D=Nachkommastellen |
| Zeichenkette fester Länge | CHAR(N) | CHAR(10) | N=Feste Länge |
| Zeichenkette variabler Länge | VARCHAR(N) | VARCHAR(255) | N=Maximale Länge |
| Datum und/oder Zeit | DATE, TIME, DATETIME, YEAR | DATE, TIME, DATETIME, YEAR | Verschiedene Formate für Datum und/oder Zeit |
| Zeitstempel | TIMESTAMP | TIMESTAMP | Automatische Zeitstempel für Einfügungen/Aktualisierungen |
| Binäre Datenobjekte <br> variabler Länge (z.B. Bild) | BLOB | BLOB | BLOB=Binary Large Object |
| Verbund | SET | SET('Wert1', 'Wert2') | Menge von vordefinierten Werten |
| JSON | JSON | JSON | Speichert JSON-Daten |

Diese Tabelle enthält die gängigen Datentypen in MariaDB (MySQL) und ihre möglichen Einstellungen.