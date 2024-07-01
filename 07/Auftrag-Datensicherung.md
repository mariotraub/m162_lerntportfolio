# Auftrag Datensicherung

## Aufgabe 2
Ihr Dumpfile (Backup-File) ist nun nicht mehr leer. Analysieren Sie den Inhalt.
### Was finden Sie vor? Beschreiben Sie ihn.
Der Dump enthält die vollständige Struktur der Datenbank Tourplaner mit Inhalt. 


## Aufgabe 3
### a. Welchen Backup haben wir in Aufgabe 1 erstellt?

In Aufgabe 1 haben wir ein **logisches Backup** erstellt. Dies lässt sich daran erkennen, dass der Dump die Struktur (CREATE TABLE Statements) und Inhalte (INSERT Statements) der Datenbank `Tourplaner` in Form von SQL-Befehlen enthält.

### b. Welche Nachteile hat dieses Backup?
Die Nachteile eines logischen Backups sind:
1. **Langsamkeit**: Logische Backups sind langsamer als physische Backups, weil der MySQL-Server die Daten erst abfragen und in ein logisches Format umwandeln muss.
2. **Größe**: Das Output-Format von logischen Backups ist in der Regel größer, insbesondere wenn es in Textformat gespeichert wird.
3. **Keine log- oder Konfigurationsdateien**: Logische Backups beinhalten keine Log- oder Konfigurationsdateien oder andere datenbankbezogene Dateien, die nicht Teil der Datenbank sind.
4. **Serverabhängigkeit**: Das Backup erfordert, dass der MySQL-Server läuft, und es besteht ein höheres Risiko von Datenänderungen während des Backups.

### Unterschied zwischen Online- und Offline-Backups:
- **Online-Backup**: Ein Backup, das durchgeführt wird, während der MySQL-Server läuft und die Datenbank in Betrieb ist. Dies bedeutet, dass die Datenbank während des Backups verfügbar bleibt und verwendet werden kann.
- **Offline-Backup**: Ein Backup, das durchgeführt wird, wenn der MySQL-Server heruntergefahren ist. Dies bedeutet, dass die Datenbank während des Backups nicht verfügbar ist.

### Was ist ein «Snapshot Backup»?
Unter einem Backup versteht man im Allgemeinen eine vollständige Kopie aller Daten und Dateien in Ihrem System. Ein Snapshot hingegen kopiert den Zustand eines Systems zu einem bestimmten Zeitpunkt.