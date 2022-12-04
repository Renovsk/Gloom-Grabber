@echo off
color 3
echo GLOOM GRABBER BUILDER
echo.
set /p a="name of exe?: "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Name is: %a%
pyinstaller --clean --onefile --noconsole -i NONE -n %a% GloomGrabber.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q %a%.spec
echo.
echo generated exe as %a%.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo bro enter a name
EXIT /B 1