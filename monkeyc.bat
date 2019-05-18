set PATH=%PATH%;C:\tools\connectiq-sdk\bin

echo off

tasklist /fi "imagename eq connectiq" |find ":" > nul
if errorlevel 1 taskkill /f /im "connectiq"&
start connectiq
sleep 5

start monkeyc -d fr235 -f C:\tools\connectiq-sdk\samples\Attention\monkey.jungle -o test.prg -y C:\tools\connectiq-sdk\key\cr_developer_key.der

start monkeydo test.prg fr235
