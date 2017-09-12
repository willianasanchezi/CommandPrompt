@echo off
REM Desarrollado por Willian Sanchez Ibañez
cls 
echo.
echo Digite el nombre del archivo 
echo que desea buscar Ej: carta, ya contiene el comodin *.
echo.
set /p archivo=Digite nombre del archivo:

cls
echo BUSCADOR DE ARCHIVOS
echo !!!!!!!!!!!!!!!!!!!!!
echo .
echo Buscando los archivos
echo un momento por favor ... 
date /T >> archivoS%username%_%archivo%.txt & time /T >> archivoS%username%_%archivo%.txt
for /R C:\ %%x in ( *.%archivo% ) do echo "%%x" >> archivoS%username%_%archivo%.txt
start archivoS%username%_%archivo%.txt
exit