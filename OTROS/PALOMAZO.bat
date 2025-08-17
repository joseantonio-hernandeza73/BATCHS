
set FECHA=%date% 
set HORA1=%time%
echo "INICIA COPIADO DE ARCHIVOS" > C:\Users\josea\OneDrive\Documents\BATCH\log.log
cd C:\FIGLET\
figlet PALOMAZO  >> C:\Users\josea\OneDrive\Documents\BATCH\log.log
set HORA2=%time%
echo "FECHA %FECHA%" >> C:\Users\josea\OneDrive\Documents\BATCH\log.log
echo "INICIA %HORA1%" >> C:\Users\josea\OneDrive\Documents\BATCH\log.log
echo "TERMINA  %HORA2%" >> C:\Users\josea\OneDrive\Documents\BATCH\log.log
cd C:\Users\josea\OneDrive\Documents\BATCH
