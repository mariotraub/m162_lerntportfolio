# Machen Sie eine kurze Notiz über das Löschen in DBs in Ihrem Lernportfolio!

### Lernportfolio: Löschen in Datenbanken

In professionellen Datenbanken wird der SQL-Befehl `DELETE` selten verwendet, um Informationsverlust zu vermeiden. Stattdessen werden Datensätze als inaktiv markiert oder mit zusätzlichen Informationen wie Austrittsdaten versehen.

**Wichtige Punkte:**
1. **Vermeidung von Löschungen:** Datenverlust kann historische Beziehungen und Aktionen beeinträchtigen.
2. **Datenhistorisierung:** Zusätzliche Tabellen dokumentieren zeitliche Abläufe.
3. **Referentielle Integrität:** Fremdschlüssel-Constraints verhindern inkonsistente Löschungen.
4. **ON DELETE-Regeln:** Regeln wie `NO ACTION`, `CASCADE`, `SET NULL` und `RESTRICT` bestimmen das Verhalten beim Löschen.
5. **Datenintegrität:** Sicherstellung der Datenkorrektheit durch Eindeutigkeit, Konsistenz und Validierung.

**Fazit:** Direkte Löschungen werden vermieden, um Datenintegrität und Nachvollziehbarkeit zu gewährleisten.

# Machen Sie eine kurze Zusammenfassung des Themas Datenintegrität in Ihrem Lernportfolio!


### Lernportfolio: Datenintegrität

**Datenintegrität in Datenbanken**

Datenintegrität gewährleistet die Genauigkeit, Konsistenz und Vollständigkeit der Daten.

**Schlüsselkomponenten:**
1. **Eindeutigkeit:** Vermeidung von doppelten Datensätzen.
2. **Referentielle Integrität:** Konsistente Beziehungen zwischen Tabellen.
3. **Datentypen:** Verwendung korrekter Datentypen.
4. **Datenbeschränkungen:** Validierung von Datenformaten und Werten.
5. **Validierung:** Prüfung vor dem Einfügen der Daten.

**Fazit:** Datenintegrität ist entscheidend für die Zuverlässigkeit und Korrektheit von Daten in der Datenbank.

# Machen Sie eine kurze Notiz über die FK-Constraint-Options in Ihrem Lernportfolio!


### Lernportfolio: Fremdschlüssel-Constraint-Optionen

**FK-Constraint-Optionen beim Löschen**

Fremdschlüssel-Constraints bestimmen das Verhalten beim Löschen von Datensätzen in der Primärtabelle.

**Optionen:**
1. **ON DELETE NO ACTION:** Löschen nur, wenn keine verknüpften Datensätze existieren.
2. **ON DELETE CASCADE:** Löschen in der Primärtabelle führt zum Löschen der verknüpften Datensätze.
3. **ON DELETE SET NULL:** Verknüpfte Datensätze werden auf NULL gesetzt.
4. **ON DELETE DEFAULT:** Verknüpfte Datensätze werden auf einen Standardwert oder NULL gesetzt.
5. **ON DELETE RESTRICT:** Verhindert das Löschen, wenn verknüpfte Datensätze existieren.

**Fazit:** Diese Optionen unterstützen die referentielle Integrität, indem sie das Verhalten beim Löschen klar regeln.

# Warum kann man nicht einfach Daten löschen?

Wenn einmal Daten gelöscht werden. Können diese nicht wieder hergestellt werde. Also sollte man entweder die Daten einfach nicht einfach gelöscht werden.