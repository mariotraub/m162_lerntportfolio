## Untersuchung der Struktur

Das erzeugte SQL-Skript enthält nur die Befehle `CREATE`, `DROP` und `SET`. Zunächst werden einige grundlegende Einstellungen vorgenommen. Anschließend wird die Datenbank erstellt, wobei sie zuerst gelöscht wird, falls sie bereits existiert. Dieses Vorgehen wird auch für alle Tabellen angewendet. Am Ende des Skripts werden mit `SET` erneut einige Einstellungen festgelegt.

## Was ist neu?

In diesem SQL-Skript gibt es keine neuen oder ungewöhnlichen Befehle. Das einzige, was möglicherweise nicht jedem bekannt ist, sind die `SET`-Befehle am Anfang und Ende des Skripts. Ihre genaue Funktion ist mir nicht ganz klar.

## Was ist anders in der Non-/Identifying Relationship Datenbank?

Bei Identifying Relationships wird im Gegensatz zu Non-Identifying Relationships der Foreign Key zusammen mit dem Index als Primary Key verwendet. Die Tabelle hat dadurch **nicht** zwei Primary Keys.
