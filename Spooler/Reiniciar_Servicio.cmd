sc stop spooler
del /F /Q C:\Windows\System32\spool\PRINTERS\*.*
ping 127.0.0.1
sc start spooler