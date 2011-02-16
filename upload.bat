avrdude -p m328p -c arduino -P \\.\COM%1 -b 57600 -U flash:w:%2
pause