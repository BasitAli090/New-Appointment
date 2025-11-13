@echo off
echo Building Windows EXE...
echo.

echo Step 1: Installing dependencies...
call npm install

echo.
echo Step 2: Building EXE file...
call npm run electron:build

echo.
echo Build complete!
echo EXE file location: dist\Al Farooq Appointment System Setup *.exe
echo.

pause

