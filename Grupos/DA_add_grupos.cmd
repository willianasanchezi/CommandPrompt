:: https://technet.microsoft.com/es-es/library/cc754037(v=ws.10).aspx
:: https://technet.microsoft.com/en-us/library/ee617258.aspx
:: dsadd group cn=Beatles,cn=Musicians,dc=ss64,dc=com
:: dsadd group "cn=Rolling Stones,cn=Musicians,dc=ss64,dc=com"

:: Consultar Grupos
dsquery group -name EQUIPOS_OFICINA_DE_TECNOLOGIAS_DE_LA_INFORMACION
:: Crear Grupos
dsadd group "CN=EQUIPOS_OFICINA_DE_TECNOLOGIAS_DE_LA_INFORMACION,OU=Grupos,OU=Cuentas,DC=mintic,DC=gov,DC=co"
