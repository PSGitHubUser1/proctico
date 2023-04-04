@echo off
title Proctico for Eclipse
::
:: This file is in Development, may cause some issues!
::
:: This prompt is made to make work easy and Do not want exploit the License of FabricMC.
::
echo.
echo.
echo    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo    บ                  Proctico for Eclipse                  บ
echo    ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo    บ      (*) MIT License                                   บ
echo    ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo    บ  - Not to be published after some modifications.       บ 
echo    บ                                                        บ
echo    บ  Follow me on YT: https://youtube.com/@infoyps         บ
echo    บ  Follow me on GitHub: https://github.com/PSGitHubUser1 บ
echo    บ  My Discord ID: PSPlaysMC#3778                         บ
echo    บ  Drop a star to repo: https://bit.ly/infoyProctico     บ
echo    ศออออออออออออออออออออออออออออออออออออออออออ[Proctico]ออออผ
echo.
echo. 
pause
echo.
net session >nul 2>&1
if %errorLevel% == 0 (
echo.
  echo  บบ Running as Administrator. บบ
  echo.
) else (
echo.
echo.
  echo  บบ Please run this File as an Administrator. บบ
  echo.
  echo.
  pause
  exit
)
echo.
cd "%userprofile%\Desktop"
curl -LJO https://github.com/FabricMC/fabric-example-mod/archive/refs/heads/1.19.zip || wget -LJO https://github.com/FabricMC/fabric-example-mod/archive/refs/heads/1.19.zip
echo.

cd "%USERPROFILE%\Desktop"
powershell -ExecutionPolicy Bypass -Command "Start-Process powershell -Verb runAs -ArgumentList '-ExecutionPolicy','AllSigned','-Command exit'"
echo.

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
echo.
echo.

choco list --local-only | findstr /i /c:"eclipse" > nul
if %ERRORLEVEL% EQU 0 (
echo.
  echo    Eclipse is already installed.
  echo.
) else (
  echo.
  echo    Eclipse is not installed. Installing Eclipse...
  echo.
  choco install eclipse
  echo.
)

echo.
pause


echo.
cd "%userprofile%\Desktop"
mkdir fabric-example-mod-1.19
echo.
powershell -command "Expand-Archive -Path "%userprofile%\Desktop\fabric-example-mod-1.19.zip" -DestinationPath "%userprofile%\Desktop\fabric-example-mod-1.19" -Force"
echo.
del %userprofile%\Desktop\fabric-example-mod-1.19.zip
echo.
move "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\*" "%userprofile%\Desktop\fabric-example-mod-1.19"
echo.
del "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\.github\workflows\build.yml"
echo.
rmdir "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\.github\workflows"
echo.
rmdir "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\.github"
echo.
move "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\gradle" "%userprofile%\Desktop\fabric-example-mod-1.19"
echo.
move "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19\src" "%userprofile%\Desktop\fabric-example-mod-1.19"
echo.
rmdir "%userprofile%\Desktop\fabric-example-mod-1.19\fabric-example-mod-1.19"
echo.
del "%userprofile%\Desktop\fabric-example-mod-1.19\.gitignore"
echo.
del "%userprofile%\Desktop\fabric-example-mod-1.19\README.md"
pause
echo.
cd "%USERPROFILE%"
mkdir eclipse-workspace
cd "%USERPROFILE%\eclipse-workspace"
move "%userprofile%\Desktop\fabric-example-mod-1.19" "%USERPROFILE%\eclipse-workspace\fabric-example-mod-1.19"
echo.
echo.
echo.
echo     Your Project (fabric-example-mod-1.19) has been moved to '%USERPROFILE%\eclipse-workspace'
echo.
echo.
echo.
echo.

echo.
echo.
echo.
echo.
echo.
echo     eclipse.exe will open after closing this window by pressing 'Press any key to Continue' at last.
echo.
echo.
echo.
echo.

echo.
pause
echo.
cd %USERPROFILE%
echo.
cd eclipse
echo.
cd java-2023-03
echo.
cd eclipse
echo.
start eclipse.exe 
pause
