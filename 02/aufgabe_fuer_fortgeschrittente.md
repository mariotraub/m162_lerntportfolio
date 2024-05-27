# Lernportfolio

## Tablespace und Tablespace Architecture

### Tablespace
Ein Tablespace ist eine logische Speichereinheit in einer Datenbank, die physische Speicherdateien gruppiert und organisiert. Es handelt sich um eine Art Container, der verwendet wird, um Tabellen, Indizes und andere Objekte zu speichern. In Oracle-Datenbanken, zum Beispiel, können Tablespaces aus einer oder mehreren physischen Dateien bestehen, die Datenbankdateien genannt werden. 

### Tablespace Architecture
Die Architektur eines Tablespaces bezieht sich auf die Struktur und Organisation der Daten innerhalb des Tablespaces. Sie umfasst mehrere wichtige Komponenten:

- **Datenbankblöcke:** Die kleinste Speichereinheit, in der die tatsächlichen Daten gespeichert sind.
- **Extents:** Eine Sammlung von zusammenhängenden Datenbankblöcken, die als eine Einheit zugewiesen werden.
- **Segmente:** Eine logische Sammlung von Extents, die zusammen ein Datenbankobjekt wie eine Tabelle oder einen Index bilden.

Tablespaces bieten Vorteile wie eine verbesserte Verwaltung und Kontrolle der Speichernutzung sowie die Möglichkeit, verschiedene Teile der Datenbank auf verschiedene physische Speichergeräte zu verteilen, um Leistung und Effizienz zu verbessern.

## Partition (bezogen auf Datenbanken)

Eine Partition ist eine Methode, Daten in einer Datenbank in kleinere, überschaubarere Stücke zu unterteilen. Diese Technik wird verwendet, um die Verwaltung und Abfrage von großen Datensätzen zu erleichtern und die Performance zu optimieren. 

### Arten von Partitionierung:
- **Range Partitioning:** Daten werden basierend auf einem Bereich von Werten verteilt (z.B. Daten nach Jahreszeit).
- **List Partitioning:** Daten werden basierend auf einer Liste von Werten verteilt (z.B. nach spezifischen Regionen oder Abteilungen).
- **Hash Partitioning:** Daten werden basierend auf einem Hash-Wert verteilt, der aus einer Spalte oder einer Kombination von Spalten berechnet wird.
- **Composite Partitioning:** Eine Kombination von zwei oder mehr Partitionierungsarten.

Partitionierung kann die Abfrageleistung verbessern, indem sie die Menge der Daten reduziert, die gescannt werden muss. Sie erleichtert auch die Verwaltung und Wartung großer Datenbanken, indem sie es ermöglicht, Daten in kleinere, unabhängig verwaltbare Stücke zu unterteilen.

## Storage Engine in einer Datenbank

Eine Storage Engine ist die Komponente eines Datenbanksystems, die für das Speichern, Abrufen und Verwalten von Daten verantwortlich ist. Sie definiert, wie Daten auf physischer Ebene gespeichert werden, und beeinflusst somit die Performance und Funktionalität der Datenbank. 

### Wichtige Aufgaben einer Storage Engine:
- **Datenverwaltung:** Organisieren und speichern von Daten auf Festplatten.
- **Datenabruf:** Effizientes Abrufen von Daten basierend auf Abfragen.
- **Transaktionsverwaltung:** Unterstützung von Transaktionen, die mehrere Operationen zusammenfassen und sicherstellen, dass sie entweder vollständig ausgeführt oder vollständig rückgängig gemacht werden.
- **Indexverwaltung:** Erstellen und Verwalten von Indizes, um den schnellen Zugriff auf Daten zu ermöglichen.
- **Datensicherheit:** Gewährleistung der Datenintegrität und -sicherheit durch Mechanismen wie Sperren, Protokollierung und Wiederherstellung.

Beispiele für Storage Engines sind InnoDB und MyISAM in MySQL. InnoDB unterstützt z.B. ACID-konforme Transaktionen und Fremdschlüssel, während MyISAM für seine schnelle Leseleistung bekannt ist, jedoch keine Transaktionen unterstützt.
