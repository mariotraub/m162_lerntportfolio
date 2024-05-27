# Untersuchung der Struktur

Im SQL welches Erzeugt wurde sind nur CREATE, DROP und SET befehle. Zu erst stellt es einige sachen fest. Dann erstellt es die Datenbank und löscht sie zuerst wenn diese Schon exestiert. Dann macht es das gleiche für alle Tabellen. und am Ende nutzt es SET um wieder einige sachen festzulegen.

# Was ist Neu 

In diesem SQL Skript ist nichts was man noch nie gesehen hat. Das einizige welches man nicht kennen könnte ist das SET am Anfang und Ende. Ich verstehe nicht genau wo für diese sind.

# Was ist anderst in der Non-/Identifying Relationship Datenbank

Bei den Identifying Relationships werden anders als bei den Non idetifying Relationships sowohl der Foreigh Key als auch der Index als Primary key gegeben. Also hat die Tabelle Zwei Primary Keys.