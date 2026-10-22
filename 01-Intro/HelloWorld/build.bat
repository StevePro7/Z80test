@echo off
cls

if exist main.o del main.o

echo Compile
wla-z80 -i -o main.o main.asm 

echo [objects] > linkfile
echo main.o >> linkfile

echo Link
wlalink -S -A linkfile output.sms

if exist output.sym del output.sym
if exist main.o del main.o

echo Run
java -Dsun.java2d.d3d=false -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
::output.sms
