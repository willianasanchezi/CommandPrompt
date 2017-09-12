echo %date%  %time% >> Logs_Outlook.log
for /F "eol=; tokens=1,2 delims=," %%I in (listado.txt) do Config.cmd %%I