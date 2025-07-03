@echo off
if "%1"=="--unmount" (
    net use Z: /delete
    if %errorlevel% equ 0 (
        echo Filesystem Z: was successfully unmounted.
    ) else (
        echo Failed to unmount filesystem Z:.
    )
) else (
    net use Z: \\sshfs.r\homelabs@192.168.196.233
    if %errorlevel% equ 0 (
        echo Filesystem was built in Z:
    ) else (
        echo Failed to build filesystem.
    )
)
