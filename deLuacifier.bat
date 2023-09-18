@REM @echo off
@REM rem Check if openssl is available
@REM where openssl > nul 2>&1
@REM if %errorlevel% neq 0 (
@REM     echo OpenSSL not found. Please make sure OpenSSL is installed and added to the system PATH.
@REM     pause
@REM     exit /b
@REM )

@REM rem Check if 7z (7-Zip) is available
@REM where 7z > nul 2>&1
@REM if %errorlevel% neq 0 (
@REM     echo 7-Zip not found. Please make sure 7-Zip is installed and added to the system PATH.
@REM     pause
@REM     exit /b
@REM )

@REM rem Check if a file was dropped onto the script
@REM if "%~1"=="" (
@REM     echo Drag and drop a file onto this script.
@REM     pause
@REM     exit /b
@REM )

@REM rem Get the base name of the dropped file (without extension)
@REM for %%F in ("%~1") do set "BaseName=%%~nF"

@REM rem Run the openssl decryption command
@REM openssl enc -aes-256-cbc -d -K 526D67645A304A656E4C466757776B5976434C326C5361684662456846656334 -iv 0 -in "%~1" -out "%BaseName%.7z"

@REM rem Create a folder named after the base name
@REM mkdir "%BaseName%"

@REM rem Extract the .7z file to the created folder
@REM 7z x "%BaseName%.7z" -o"%BaseName%"

@REM rem Rename extracted files' extensions to ".luac"
@REM for %%F in ("%BaseName%\*.*") do (
@REM     ren "%%F" "%%~nF.luac"
@REM )

@REM echo Extraction complete. Files extracted and extensions renamed to: ".luac"

@REM rem Move the extracted content to the script's folder
@REM move "%BaseName%\*" "%~dp0"

@REM rem Remove the original extracted folder
@REM rd /s /q "%BaseName%"

@REM del "%BaseName%.7z"

@REM java -jar unluac.jar "%BaseName%.luac" > "%BaseName%.lua"

@REM del "%BaseName%.luac"

@REM :end
