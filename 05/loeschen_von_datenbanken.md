# *Zusammenfassung: Löschen in Datenbanken*

1. *Problem beim Löschen:* Direkter Datenverlust und Verlust von Beziehungen, was die Nachverfolgbarkeit von Aktionen beeinträchtigt.

2. *Beispiele:*
    - *Personalverwaltung:* Löschen eines Mitarbeiters führt zum Verlust aller historischen Aktivitäten.
    - *Banken:* Unprotokollierte Aktionen können juristische Probleme verursachen.
    - *Einzelhandel:* Einfaches Löschen von Transaktionen ermöglicht Missbrauch.

3. *Lösungen:*
    - *Inaktiv Markieren:* Mitarbeiterdatensätze nicht löschen, sondern als inaktiv kennzeichnen.
    - *Erweiterung der Daten:* Austrittsdaten hinzufügen statt zu löschen.
    - *Stornierungen:* Statt Transaktionen zu löschen, Stornierungen mit zusätzlichen Informationen speichern.

4. *Referentielle Integrität:* Datenbankbeziehungen verhindern das Löschen von Datensätzen, um Konsistenz und Nachvollziehbarkeit zu gewährleisten.

5. *Wikipedia-Beispiel:* Benutzernamen werden nicht gelöscht, sondern gesperrt, um historische Aktivitäten zu erhalten.