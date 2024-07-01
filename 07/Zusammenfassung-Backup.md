# Online- und Offline-Backups

## Online-Backup

- **Wird erstellt, während die Datenbank läuft.**
- Änderungen während des Backups werden in einem separaten Bereich aufgezeichnet und nach dem Backup integriert.
- **Vorteil:** Keine Ausfallzeit der Datenbank.
- **Nachteil:** Komplexere Verwaltung und höhere Anforderungen an die Systemressourcen.

## Offline-Backup

- **Wird durchgeführt, indem die Datenbank heruntergefahren wird.**
- **Vorteil:** Einfache Durchführung.
- **Nachteil:** Anwendungen oder Websites sind während des Backups nicht verfügbar.
- **Empfohlen für Zeiten mit geringem Datenverkehr, z.B. nachts.**

# Arten der Datensicherung

## Voll-Backup

- **Alle Daten und Strukturen der Datenbank werden gesichert.**
- **Vorteil:** Komplettes Backup in einer Datei.
- **Nachteil:** Hoher Speicherplatzbedarf bei häufiger Sicherung.
- **Zur Wiederherstellung wird nur das jeweilige Voll-Backup benötigt.**

## Differentielles Backup

- **Nach einem Voll-Backup werden nur geänderte oder neue Dateien seit dem letzten Voll-Backup gesichert.**
- **Vorteil:** Spart Speicherplatz im Vergleich zu häufigen Voll-Backups.
- **Nachteil:** Geänderte Dateien werden bis zum nächsten Voll-Backup bei jedem differentiellen Backup erneut gesichert.
- **Zur Wiederherstellung benötigt man das letzte Voll-Backup und das gewünschte differentielle Backup.**

## Inkrementelles Backup

- **Nach einem Voll-Backup werden nur geänderte oder neue Dateien seit der letzten Sicherung (Voll- oder inkrementell) gesichert.**
- **Vorteil:** Jede Datei wird nur einmal gesichert, wodurch Speicherplatz gespart wird.
- **Nachteil:** Zur Wiederherstellung sind alle Sicherungen vom letzten Voll-Backup bis zum gewünschten Stand notwendig.

![alt text](image.png)