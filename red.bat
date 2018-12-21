@echo off
set dir=%~dp0

if /I  "%1" EQU "on" (
	start %dir%redshift\redshiftdaemon.vbs
) ELSE (
	REM /I "%1" EQU "off" (
	taskkill /im redshift.exe
	start %dir%redshift\redshift.exe -x
)
