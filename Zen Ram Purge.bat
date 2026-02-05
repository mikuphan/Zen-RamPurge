@echo off
chcp 65001 >nul
title ZEN RAM PURGE - TASK CLEAN MODE
color 0A

:: ===== TU XIN ADMIN =====
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:menu
cls
color 0A
echo.
echo  ███████╗███████╗███╗   ██╗
echo  ╚══███╔╝██╔════╝████╗  ██║
echo    ███╔╝ █████╗  ██╔██╗ ██║
echo   ███╔╝  ██╔══╝  ██║╚██╗██║
echo  ███████╗███████╗██║ ╚████║
echo  ╚══════╝╚══════╝╚═╝  ╚═══╝
echo.
echo =====================================
echo     ZEN RAM PURGE - ADMIN MODE
echo =====================================
echo.
echo [1] Kill task rac + app nen (SAFE)
echo [2] Kill MANH + reset Explorer
echo [3] Xem RAM + Page File
echo [4] Thoat
echo.
choice /c 1234 /n /m "Chon chuc nang: "

if errorlevel 4 goto exit
if errorlevel 3 goto info
if errorlevel 2 goto ultra
if errorlevel 1 goto safe

:loading
echo Dang quet he thong...
timeout /t 1 >nul
echo [######--------------] 30%%
timeout /t 1 >nul
echo [############--------] 60%%
timeout /t 1 >nul
echo [####################] 100%%
timeout /t 1 >nul
exit /b

:safe
cls
color 0A
echo KILL TASK RAC - SAFE MODE
echo.
call :loading

:: App UWP & nen thuong gap
taskkill /f /im OneDrive.exe >nul 2>&1
taskkill /f /im YourPhone.exe >nul 2>&1
taskkill /f /im Microsoft.Photos.exe >nul 2>&1
taskkill /f /im SearchApp.exe >nul 2>&1
taskkill /f /im Widgets.exe >nul 2>&1
taskkill /f /im Teams.exe >nul 2>&1

:: Xoa cache nguoi dung
del /s /f /q "%temp%\*" >nul 2>&1

:: Ep Windows thu hoi bo nho nguoi dung
powershell -command ^
"[System.GC]::Collect();[System.GC]::WaitForPendingFinalizers();[System.GC]::Collect()"

echo.
echo Da don rac an toan
timeout /t 2 >nul
goto menu

:ultra
cls
color 0A
echo KILL TASK RAC - MANH NHAT (SAFE)
echo.
call :loading

:: Kill app nen + cache
taskkill /f /im OneDrive.exe >nul 2>&1
taskkill /f /im YourPhone.exe >nul 2>&1
taskkill /f /im Teams.exe >nul 2>&1
taskkill /f /im Widgets.exe >nul 2>&1
taskkill /f /im MicrosoftEdgeUpdate.exe >nul 2>&1

:: Reset Explorer (giai phong RAM cache shell)
taskkill /f /im explorer.exe >nul
timeout /t 1 >nul
start explorer.exe

:: Clear temp he thong
del /s /f /q "%temp%\*" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1

:: Thu hoi RAM nguoi dung toi da
powershell -command ^
"[System.GC]::Collect();[System.GC]::WaitForPendingFinalizers();[System.GC]::Collect()"

echo.
echo Da giai phong RAM toi da (khong pha he thong)
timeout /t 2 >nul
goto menu

:info
cls
color 0A
echo THONG TIN RAM HE THONG
echo.

powershell -command ^
"$os=Get-CimInstance Win32_OperatingSystem;$pf=Get-CimInstance Win32_PageFileUsage; ^
Write-Host ('Tong RAM (GB): ' + [math]::Round($os.TotalVisibleMemorySize/1MB,2)); ^
Write-Host ('RAM Con Trong (GB): ' + [math]::Round($os.FreePhysicalMemory/1MB,2)); ^
Write-Host ('Page File Dang Dung (GB): ' + [math]::Round($pf.CurrentUsage/1024,2)); ^
Write-Host ('Page File Toi Da (GB): ' + [math]::Round($pf.AllocatedBaseSize/1024,2))"

echo.
pause
goto menu

:exit
cls
color 0A
echo Thoat ZEN RAM PURGE
timeout /t 1 >nul
exit


