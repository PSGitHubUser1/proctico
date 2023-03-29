@echo off
echo.
cd "%userprofile%\Desktop"
curl -LJO https://github.com/FabricMC/fabric-example-mod/archive/refs/heads/1.19.zip
echo.

set "idea64_exe"="%ProgramFiles%\JetBrains\IntelliJ IDEA Community Edition 2022.3.3\bin\idea64.exe"

if exist "%idea64_exe%" (
echo.
echo    IntelliJ IDEA is already installed on this PC.
echo.
) else (
echo    IntelliJ IDEA is not installed on this PC. Downloading (+Installing) it now!
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
echo.
%ProgramFiles%\JetBrains\IntelliJ IDEA Community Edition 2022.3.3\bin\idea64.exe 
pause
echo.

