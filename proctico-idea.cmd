@echo off
title Proctico for Idea
::
:: This file is in Development, may cause some issues but its almost done!
::
:: This prompt is made to make work easy and Not exploiting the License of FabricMC.
::
echo.
echo    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo    บ                  Proctico for Idea                     บ
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
echo.

cd "%userprofile%\Desktop"
curl -LJO https://github.com/FabricMC/fabric-example-mod/archive/refs/heads/1.19.zip
echo.

set "idea64_exe="%ProgramFiles%\JetBrains\IntelliJ IDEA Community Edition 2022.3.3\bin\idea64.exe"

if exist "%idea64_exe%" (
echo.
echo    -----
echo.
) else (
echo.
start cmd /c "winget install JetBrains.IntelliJIDEA-Community"
echo.
pause
)

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
mkdir IdeaProjects
cd "%USERPROFILE%\IdeaProjects"
move "%userprofile%\Desktop\fabric-example-mod-1.19" "%USERPROFILE%\IdeaProjects\fabric-example-mod-1.19"
echo.
echo.
echo.
echo     Your Project (fabric-example-mod-1.19) has been moved to '%USERPROFILE%\IdeaProjects'
echo.
echo.
echo.
echo.

echo.
echo.
echo.
echo.
echo.
echo     idea64.exe will open after closing this window by pressing 'Press any key to Continue' at last.
echo.
echo.
echo.
echo.

echo.
pause
echo.
cd %ProgramFiles%
echo.
cd JetBrains
echo.
cd IntelliJ IDEA Community Edition 2023.1
echo.
cd bin
echo.
start idea64.exe   
pause
