# DBMS
## Aufgabe 1 (Zusammenfassung)
### Definition
Ein Datenbanksystem (DBS) verwaltet grosse Datenmengen effizient und dauerhaft.
Es besteht aus dem Datenbankmanagementsystem (DBMS) und der Datenbank (DB). 
Das DBMS organisiert die Speicherung und den Zugriff auf die Daten. Verschiedene Datenbanksysteme basieren auf unterschiedlichen Modellen, wobei das relationale Datenbanksystem am bekanntesten ist.

---
### Merkmale
Ein DBMS (Datenbankmanagementsystem) muss folgende Funktionen haben:
1. **Datenverwaltung**: Alle Daten werden einheitlich an einem Ort gespeichert und verwaltet. Beziehungen zwischen den Daten werden definiert, und Daten können schnell verknüpft werden.
2. **Sprache**: Das DBMS stellt an seiner Schnittstelle eine Datenbanksprache (query language) für die folgenden Zwecke zur Verfügung:
- Datenanfrage (retrieval),
- Datenmanipulation (Data Manipulation Language, DML),
- Verwaltung der Datenbank (Data Definition Language, DDL  ),
- Berechtigungssteuerung (Data Control Language, DCL).
3. **Benutzeroberflächen**: Verschiedene Benutzer können über unterschiedliche Oberflächen, wie grafische Benutzeroberflächen (GUI) und Webzugriffe, auf die Datenbank zugreifen.
4. **Katalog**: Ein Verzeichnis, das Informationen über die Daten in der Datenbank enthält (Metadaten).
5. **Benutzersichten**: Verschiedene Benutzergruppen können nur die für sie relevanten Daten sehen und nutzen.
6. **Konsistenzkontrolle**: Das DBMS sorgt dafür, dass alle Daten korrekt und konsistent gespeichert werden und bleibt auch bei Änderungen korrekt.
7. **Zugriffskontrolle**: Regeln verhindern den unautorisierten Zugriff auf die Datenbank.
8. **Transaktionen**: Mehrere Änderungen können als eine Einheit gespeichert werden, die komplett oder gar nicht ausgeführt wird.
9. **Mehrbenutzerfähigkeit**: Mehrere Benutzer können gleichzeitig auf die Datenbank zugreifen, ohne sich gegenseitig zu stören.
10. **Datensicherung**: Bei Fehlern kann die Datenbank auf einen korrekten Zustand zurückgesetzt werden.

---

### Vorteile
1. **Standards**: Erleichtert die einheitliche Organisation von Daten.
2. **Effizienter Zugriff**: Speichert und ruft große Datenmengen schnell ab.
3. **Schnellere Entwicklung**: Bietet Funktionen, die die Programmierung erleichtern und beschleunigen.
4. **Flexibilität**: Datenstruktur kann leicht geändert werden, ohne bestehende Daten zu stören.
5. **Hohe Verfügbarkeit**: Daten sind jederzeit für alle Benutzer verfügbar.
6. **Wirtschaftlichkeit**: Reduziert Kosten durch zentrale Datenverarbeitung und leistungsstärkere Hardware.

---
### Nachteile
1. **Hohe Anfangsinvestitionen**: Kosten für Hardware und Software sind hoch.
2. **Weniger Effizienz**: Für spezialisierte Anwendungen weniger effizient als spezialisierte Software.
3. **Eingeschränkte Optimierung**: Kann nicht alle Anwendungsprogramme gleichzeitig optimal unterstützen.
4. **Zusatzkosten**: Kosten für Datensicherheit, Synchronisation und Konsistenzkontrolle.
5. **Fachpersonal**: Erfordert hochqualifizierte Experten wie Datenbankdesigner und -administratoren.
6. **Verwundbarkeit**: Zentralisierung kann anfällig machen, obwohl Verteilung eine Lösung bietet.

Reguläre Dateien sind sinnvoll, wenn:
- Kein gleichzeitiger Zugriff durch mehrere Benutzer nötig ist.
- Feste Echtzeitanforderungen bestehen, die ein DBMS nicht erfüllen kann.
- Daten und Anwendungen einfach und unveränderlich sind.
---

# Aufgabe 2
## Mindmap
![image](https://github.com/mariotraub/m164_lernportfolio/assets/150661329/8f3854cb-50b1-4705-a6e4-68b9c8947fb3)

