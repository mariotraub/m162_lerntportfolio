## 1. Welche Stufen gibt es bei der Wissenstreppe? Nennen Sie diese der Reihe nach und machen Sie ein Beispiel mit einem Wechselkurs.

Die verschiedenen Stufen der Wissenstreppe sind:

1. **Zahlen, Ziffern, Sonderzeichen und Buchstaben**
2. **Daten (Nachrichten)**
3. **Informationen (Neuigkeitswert)**
4. **Wissen**
5. **Kompetenz**

## Beispiel mit einem Wechselkurs:

1. **Zahlen, Ziffern, Sonderzeichen und Buchstaben**: z.B. $1 = €0.85
2. **Daten (Nachrichten)**: Tägliche Wechselkursaktualisierungen
3. **Informationen (Neuigkeitswert)**: Der Wechselkurs des US-Dollars ist gegenüber dem Euro gestiegen.
4. **Wissen**: Ein höherer Wechselkurs bedeutet, dass der Dollar an Wert gewonnen hat.
5. **Kompetenz**: Die Fähigkeit, basierend auf Wechselkursschwankungen finanzielle Entscheidungen zu treffen.


## 2. Wie werden Netzwerk-Beziehungen im logischen Modell abgebildet?

Im logischen Modell werden Netzwerk-Beziehungen in der Regel durch Verknüpfungen zwischen verschiedenen Entitäten oder Tabellen dargestellt, oft mit Hilfe von Fremdschlüsseln, um Beziehungen zwischen den Datensätzen herzustellen.

## 3. Was sind Anomalien in einer Datenbasis? Welche Arten gibt es?

Anomalien in einer Datenbasis sind Unregelmässigkeiten oder Fehler, die die Konsistenz und Integrität der Daten beeinträchtigen können. Es gibt verschiedene Arten von Anomalien, darunter:

1. **Einfügeanomalien (insert)**: Das Einfügen neuer Daten führt zu unerwünschten Effekten, wie z.B. dem Auftreten von NULL-Werten.
2. **Löschanomalien (delete)**: Das Löschen bestimmter Daten kann unerwartete Verluste oder Inkonsistenzen in anderen Teilen der Datenbasis verursachen.
3. **Änderungsanomalien (update)**: Das Ändern von Daten kann zu Inkonsistenzen oder Widersprüchen zwischen verschiedenen Datensätzen führen.

## 4. Gibt es redundante "Daten"? Warum?

Ja, redundante Daten können in einer Datenbasis vorhanden sein. Dies kann aus verschiedenen Gründen geschehen, wie z.B. zur Verbesserung der Leistung, zur Redundanzkontrolle oder zur Unterstützung von Datenintegrität. Ein Beispiel für redundante Daten könnte eine Tabelle mit Benutzerinformationen sein, die den gleichen Benutzernamen in verschiedenen Zeilen enthält, um auf verschiedene Daten zuzugreifen oder um die Effizienz von Abfragen zu verbessern.

## 5. Datenstrukturierung:  
### Welche zwei Aspekte können strukturiert werden?  
**Datenformatierung** bedeutet, dass man Daten ordnet und anordnet, wie zum Beispiel in Tabellen oder Listen. Das macht es leichter, die Daten zu speichern und zu finden.
**Datenmodellierung** ist das Planen, wie Daten aufgebaut sind, damit sie gut funktionieren. Man legt fest, wie Daten miteinander verbunden sind und sorgt dafür, dass man leicht auf sie zugreifen kann.

### Welche Kategorien (Abstufungen) gibt es bei der Strukturierung?  
**Statische Datenstrukturen:** Diese haben eine feste Grösse, die zu Beginn festgelegt wird und später nicht verändert werden kann. Beispiele hierfür sind Arrays und Records1.
**Dynamische Datenstrukturen:** Im Gegensatz zu statischen Strukturen können dynamische Datenstrukturen ihre Grösse verändern, um sich an die Anzahl der gespeicherten Daten anzupassen. Sie verwenden Zeiger, um auf Datenobjekte zu verweisen.

### Wie müssen die Daten in einer DB strukturiert sein?
- **Tabellenformat:** jede Tabelle repräsentiert eine Entität wie bspw. Kunden oder Produkte
- **Primärschlüssel:** jede Tabelle besitzt einen unique primary key
- **Beziehungen:** es gelten klare Beziehungen zwischen den Tabellen
- **Normalisierung:** die Daten sollten normalisiert werden, um Redundanzen zu vermeiden
- **Sicherheitsrichtlinien:** der Zugriff sollte nur auf befugte Nutzer eingeschränkt werden

## 6. Beschreibung des Bildes mit den richtigen Fachbegriffen

![image](https://gitlab.com/ch-tbz-it/Stud/m164/-/raw/main/10_Auftraege_und_Uebungen/00_Start/Recap_Fragen/Tabelle_labelled.png)

1. **Name**
2. **ID (Keine Information)**
3. **Attribute**
4. **Attributwerte**
5. **Entität**

## 7. Welche (einschränkenden) Einstellungen zu den Attributen (z.B. ID) kennen Sie?
- PK = Primary Key
- NN = Not Null
- UQ = Unique
- B = Binary
- UN = Unsigned
- ZF = Fill with 0
- AI = Auto_Increment
- G = Generated Column
