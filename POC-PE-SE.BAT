@echo off
echo Privilege Escalation and System Enumeration PoC Script
echo -----------------------------------------------------
echo.

:: Check current user privileges
whoami /priv > "%USERPROFILE%\Desktop\privilege_check.txt"
echo [+] Privilege Check Completed

:: Enumerate running processes
tasklist > "%USERPROFILE%\Desktop\running_processes.txt"
echo [+] Running Processes Enumerated

:: List installed software
wmic product get name,version > "%USERPROFILE%\Desktop\installed_software.txt"
echo [+] Installed Software Enumerated

:: Check for writable directories
icacls C:\ /findsid "%USERNAME%" /t > "%USERPROFILE%\Desktop\writable_directories.txt"
echo [+] Writable Directories Enumerated

:: Check for scheduled tasks
schtasks /query /fo LIST > "%USERPROFILE%\Desktop\scheduled_tasks.txt"
echo [+] Scheduled Tasks Enumerated

echo.
echo [+] Privilege Escalation and System Enumeration Completed
echo Report saved to: %USERPROFILE%\Desktop\
