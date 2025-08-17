
@echo off
SET count=1
FOR  %%G IN (01_CAP_PERFECCION 02_CAP_ROSA_CRUZ 03_CAP_KADOSH 04_31_33 CONGRESOS LIBROS_MASONICOS) DO (call :subroutine "%%G")
GOTO :eof

:subroutine
 echo %count%:%1
 set /a count+=1
 GOTO :eof