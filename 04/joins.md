# Joins
## Kartesisches Produkt: Erklären Sie in eigenen Worten, warum diese Abfrage kein sinnvolles Ergebnis gibt:

```SQL
SELECT * FROM kunden
INNER JOIN orte;
```
Es joint zu jedem Kunden jeden Ort, das Ergebnis ist eine Tabelle mit *[Zeilen von Ort]* * *[Zeilen von Kunden]* Zeilen


Einfache Abfragen über zwei Tabellen
a)	Geben Sie Name, Postleitzahl und Wohnort aller Kunden aus. Die Liste enthält den Kundennamen und den Namen des Orts, wo er wohnt.
```SQL
select k.name, o.id_postleitzahl, o.name from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl;
```
b)	Geben Sie Name und Wohnort aller Kunden aus, die die Postleitzahl 79312 haben.
```SQL
select k.name, o.name from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl
where o.id_postleitzahl = 79312;
```
c)	Geben Sie Name und Wohnort aller Kunden aus, die in Emmendingen wohnen (Einschränkungskriterium ist NICHT die Postleitzahl, sondern 'Emmendingen').
```SQL
select k.name, o.name from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl
where o.name = 'Emmendingen';
```
d)	Geben Sie Name, Wohnort und Einwohnerzahl für alle Kunden aus, die in einem Ort mit mehr als 70000 Einwohnern wohnen.
```SQL
select k.name, o.name, o.einwohnerzahl from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl
where o.einwohnerzahl > 70000;
```
e)	Geben Sie alle Orte aus, die weniger als 1000000 Einwohner haben.
```SQL
select * from orte
where einwohnerzahl < 1000000;
```
f)	Geben Sie Kundename und Ortname aus für alle Kunden, die in Orten mit einer Einwohnerzahl zwischen 100.000 und 1.500.000 leben.
```SQL
select k.name, o.name from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl
where o.einwohnerzahl > 100000 and o.einwohnerzahl < 1000000;
```
g)	Geben Sie Kundename, Postleitzahl und Ortname aus für alle Kunden, deren Name ein "e" enthält und alle Orte, die ein "u" oder ein "r" enthalten (frEd aus stUden wird also genau so angezeigt wie jEssE aus bRnz, frEd aus salzen aber nicht und martin aus hambURg auch nicht).

```SQL
select k.name, o.name, o.id_postleitzahl from kunden as k
join orte as o on k.fk_ort_postleitzahl = o.id_postleitzahl
where k.name like '%e%' and (o.name like '%u%' or o.name like '%r%');
```
