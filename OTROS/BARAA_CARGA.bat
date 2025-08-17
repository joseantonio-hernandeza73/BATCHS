@Echo off
cls

Set "Path=%Path%;%cd%;%cd%\src;"

Mode 82,25
Echo.
Call Progress 76 0 100
For /l %%B in (0,1,100) do (Call Progress 77 %%B 100)
Echo.

exit 