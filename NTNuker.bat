@echo off
@color 0a
@title NTNuker

echo Welcome/Bienvenue
echo Choose your language/Choisissez votre langue
echo.
echo [F] Francais/French
echo [E] English/Anglais
choice /c:FE 
if %errorlevel% == 0 (
cls
goto :menu_fr
)
if %errorlevel% == 2 (
cls
goto :menu_en
)


