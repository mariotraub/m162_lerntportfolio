## Generalisierung / Spezialisierung

In einer Datenbank können verschiedene Datentypen (Entitätstypen) ähnliche Eigenschaften (Attribute) haben. Um Doppelungen (Redundanz) zu vermeiden, 
werden die gemeinsamen Attribute in einem übergeordneten Datentyp (Generalisierung) zusammengefasst. Die speziellen Attribute bleiben in den untergeordneten Datentypen (Spezialisierung). 
Die untergeordneten Datentypen verweisen mit einem Fremdschlüssel auf den übergeordneten Datentyp. So ist zum Beispiel ein "Mitarbeiter" eine spezielle Form einer "Person", 
genauso wie ein "Kunde" eine spezielle Form einer "Person" ist.
