Settings
Dieser Vorgang ist üblicherweise aus Sicherheitsgründen im Server und im Klient deaktiviert!


Der Server sollte folgende Einstellung haben:

SET GLOBAL local_infile=1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

Es sollte auch kein spezieller Import-Pfad gesetzt sein!

SHOW VARIABLES LIKE 'secure_file_priv';
Sonst in my.ini Abschnitt [mysqld] diese Zeile ergänzen  secure_file_priv = "".


Der MySQL.exe-Klient sollte folgende Einstellung im my.ini haben:

[mysql]
safe-updates
MYSQL_OPT_LOCAL_INFILE=1

Bei Workbench muss die "Connection" angepasst werden: 
OPT_LOCAL_INFILE=1 unter Edit Connection...>Advance>Other einfügen

Wenn Sie einen anderen Klient oder eine andere Klient-Bibliothek benutzen, lesen Sie die Dokumentation für Ihren spezifischen Klient oder Ihre Klient-Bibliothek, um festzustellen, wie sie die Anweisung OPT_LOCAL_INFILE=1 handhabt.

```SQL
LOAD DATA
    [LOW_PRIORITY | CONCURRENT] [LOCAL]
    INFILE 'file_name'
    [REPLACE | IGNORE]
    INTO TABLE tbl_name
    [PARTITION (partition_name [, partition_name] ...)]
    [CHARACTER SET charset_name]
    [{FIELDS | COLUMNS}
        [TERMINATED BY 'string']
        [[OPTIONALLY] ENCLOSED BY 'char']
        [ESCAPED BY 'char']
    ]
    [LINES
        [STARTING BY 'string']
        [TERMINATED BY 'string']
    ]
    [IGNORE number {LINES | ROWS}]
    [(col_name_or_user_var
        [, col_name_or_user_var] ...)]
    [SET col_name={expr | DEFAULT}
        [, col_name={expr | DEFAULT}] ...]
```