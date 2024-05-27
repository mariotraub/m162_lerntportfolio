## Auftrag 2

### Frage 1
Was ist der Unterschied zwischen einer Identifying und einer Non-Identifying Beziehung?

#### Antwort
Der Hauptunterschied liegt darin, ob der Foreign Key Teil des primary keys der Child-Tabelle ist oder nicht.

- Bei einer **Identifying Beziehung** ist der Fremdschlüssel Teil des Primärschlüssels der Child-Tabelle. Das bedeutet, ein Datensatz in der Child-Tabelle ist nur in Kombination mit dem referenzierten Datensatz der Parent-Tabelle eindeutig identifizierbar.

- Bei einer **Non-Identifying Beziehung** ist der Fremdschlüssel kein Teil des Primärschlüssels der Child-Tabelle. Die Datensätze in der Child-Tabelle sind eigenständig, unabhängig von der Parent-Tabelle, identifizierbar.

### Frage 2
Wann verwendet man typischerweise eine Identifying Beziehung?

#### Antwort
Eine Identifying Beziehung wird typischerweise dann verwendet, wenn ein Datensatz in der Child-Tabelle nur in Kombination mit einem Datensatz der Parent-Tabelle Sinn ergibt und eindeutig identifizierbar ist. Beispiele sind:

- Räume in einem Gebäude (Raum ist nur zusammen mit Gebäude eindeutig)
- Buchkapitel in einem Buch (Kapitel ist nur zusammen mit Buch eindeutig)
- Rechnungsposten einer Rechnung (Posten ist nur mit Rechnungsnummer eindeutig)

### Frage 3
Gib ein Beispiel für eine Non-Identifying Beziehung.

#### Antwort
Ein Beispiel für eine Non-Identifying Beziehung wäre die Beziehung zwischen einer Person und ihren Kleidungsstücken. Ein Kleidungsstück ist unabhängig von der Person, der es gehört, eindeutig identifizierbar (z.B. über Marke, Modell, Seriennummer). Die Tabellen könnten wie folgt aussehen:

```
Person (PersonID, Name, Geburtsdatum) 
PK = PersonID

Kleidung (KleidungsID, Marke, Modell, Groesse, PersonID)
PK = KleidungsID 
FK = PersonID verweist auf Person(PersonID)
```
