@echo off
echo *********************************************
echo *                                           *
echo *       BIENVENIDO A CAMBIA-PLANTILLA       *
echo *                                           *
echo *********************************************
echo.
echo Intercambia la plantilla de tus clases de Netbeans 
echo por otras sin comentarios molestos.
echo.  
echo Ruta absoluta del directorio actual: %CD%

:menu
echo Selecciona que plantilla deseas modificar:
echo 	1) Java Main Class
echo 	2) Java Class
echo.    
echo 	0) Salir
echo. 
set /p choice=Eleccion numero:

if "%choice%"=="0" (
	echo chao
	pause
	exit
) else if "%choice%"=="1" (
	echo Ejecutando archivo 1...
	copy %CD%\Plantillas\Main.java /A %APPDATA%\NetBeans\23\config\Templates\Classes
    	pause
    	goto menu
) else if "%choice%"=="2" (
	echo Ejecutando archivo 2...
	copy %CD%\Plantillas\Class.java /A %APPDATA%\NetBeans\23\config\Templates\Classes
	pause
    	goto menu
)
echo Valor no valido, intentalo de nuevo.
goto menu

