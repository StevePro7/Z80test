#!/usr/bin/env bash
set -e

clear

if [ -a main.o ]
then
    rm main.o
fi

echo Compile
wla-z80 -o main.o main.asm 

echo [objects] > linkfile
echo main.o >> linkfile

echo Link
wlalink linkfile output.sms

if [ -a main.o ]
then
    rm main.o
fi

echo Run
nohup java -jar ~/SEGA/Emulicious/Emulicious.jar -remotedebug 58870 output.sms > /dev/null 2>&1 &

for ((attempt = 0; attempt < 100; attempt++)); do
    if (echo > /dev/tcp/127.0.0.1/58870) 2> /dev/null; then
        exit 0
    fi
    sleep 0.1
done

echo "Emulicious remote debugger did not start on port 58870." >&2
exit 1