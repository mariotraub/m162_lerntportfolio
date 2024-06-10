## Fügen Sie ein paar Daten in die Tabellen tbl_Projekt,tbl_Passagier, tbl_Bus, tbl_Fahrer und tbl_Ausweis ein und überprüfen Sie die Beziehungen. Beachten Sie, dass Sie zuerst die Master-Tabelle füllen müssen, bevor Sie in der Detailtabelle FK-Werte setzen können!

öper muss no mache


# Was geschieht, wenn Sie z.B. bei einer 1:c Beziehung zwei gleiche Fremdschlüsselwerte angeben?

Wenn man zwei gleiche Fremdschlüssel in eine 1:c Tabelle einfügt, kann ist das ein Verstoss gegen die Regeln der Datenbank und es wird ein Error aufgeworfen.

# Was geschieht, wenn Sie z.B. bei einer 1:mc Beziehung NULL als FS-Wert angeben?

Das wäre kein Problem denn bei einer 1:mc Beziehung werden auf 'Null' werte angenommen, da diese in das c fallen.