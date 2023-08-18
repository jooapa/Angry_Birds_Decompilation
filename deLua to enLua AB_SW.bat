@echo off
rem Check if openssl is available
where openssl > nul 2>&1
if %errorlevel% neq 0 (
    echo OpenSSL not found. Please make sure OpenSSL is installed and added to the system PATH.
    pause
    exit /b
)

rem Check if 7z (7-Zip) is available
where 7z > nul 2>&1
if %errorlevel% neq 0 (
    echo 7-Zip not found. Please make sure 7-Zip is installed and added to the system PATH.
    pause
    exit /b
)

rem Check if a file was dropped onto the script
if "%~1"=="" (
    echo Drag and drop a file onto this script.
    pause
    exit /b
)

rem Get the base name of the dropped file (without extension)
for %%F in ("%~1") do set "BaseName=%%~nF"

rem Run the openssl decryption command
openssl enc -aes-256-cbc -d -K 416E3874336D6E38553673706951307A4848723361316C6F44725261336D7445 -iv 0 -in "%~1" -out "%BaseName%.7z"

rem Create a folder named after the base name
mkdir "%BaseName%"

rem Extract the .7z file to the created folder
7z x "%BaseName%.7z" -o"%BaseName%"

rem Rename extracted files' extensions to ".luac"
for %%F in ("%BaseName%\*.*") do (
    ren "%%F" "%%~nF.luac"
)

echo Extraction complete. Files extracted and extensions renamed to: ".luac"

rem Move the extracted content to the script's folder
move "%BaseName%\*" "%~dp0"

rem Remove the original extracted folder
rd /s /q "%BaseName%"

del "%BaseName%.7z"

java -jar unluac.jar "%BaseName%.luac" > "%BaseName%.lua"

del "%BaseName%.luac"

:end
