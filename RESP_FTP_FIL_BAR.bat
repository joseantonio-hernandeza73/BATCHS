@echo off
COLOR 0a
REM ****************************************************************************
setlocal EnableDelayedExpansion

rem Count the number of files in this dir (just as an example)
set n=0
for %%F in (01_CAP_PERFECCION 02_CAP_ROSA_CRUZ 03_CAP_KADOSH 04_31_33 CONGRESOS LIBROS_MASONICOS) do set /A n+=1

rem Fill "bar" variable with 70 characters
set "bar="
for /L %%i in (1,1,70) do set "bar=!bar!X"

rem Fill "space" variable with filler spaces
set "space="
for /L %%i in (1,1,110) do set "space=!space!_"
REM ****************************************************************************
cls 
set FECHA=%date% 
cls 
set HORA1=%time%
cls 
echo "INICIA RESPALDO POR FTP" > C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
cls 
cd C:\FIGLET\
cls 
figlet FILOSOFICOS  >> C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
cls 
cd "C:\Program Files (x86)\WinSCP"
cls 
for %%F in (01_CAP_PERFECCION 02_CAP_ROSA_CRUZ 03_CAP_KADOSH 04_31_33 CONGRESOS LIBROS_MASONICOS) do (
REM *****************************************************************************
set /A i+=1, percent=i*100/n, barLen=70*percent/100
   for %%a in (!barLen!) do title !percent!%%  !bar:~0,%%a!%space%
   echo !i!- %%F
REM *****************************************************************************
winscp.com   /command "open sftp://ddt_99mx:Vitriol99@tubalcainv/" "put D:\FILOSOFICOS\%%F\*.* /media/ddt_99mx/BETA/FILOSOFICOS/%%F/"  ^ "exit" >> C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
)
set HORA2=%time%
echo "FECHA %FECHA%" >> C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
echo "INICIA %HORA1%" >> C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
echo "TERMINA  %HORA2%" >> C:\Users\josea\OneDrive\Documents\BATCH\LOG_FIL.txt
cd C:\Users\josea\OneDrive\Documents\BATCH
exit

