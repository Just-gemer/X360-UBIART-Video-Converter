@echo off
title NX Webm Tool By Just gemer
echo PLEASE DONT CLOSE WINDOW WHILE CONVERTING
set /P mapname=Enter mapname: 
ffmpeg.exe -i input.webm -threads:v 4 -sws_flags bicubic -codec:v libvpx -r:v 25  -b:v 3800k -bufsize 6000k -g 120 -rc_lookahead 16 -qmax 51 -qmin 11 -slices 4 -quality realtime -an -vol 0 -b:v 3800k  -aspect 16:9 -b:v 5000k -filter:v scale=1280x720 %mapname%.x360.webm
mkclean.exe %mapname%.x360.webm
del %mapname%.x360.webm
ren clean.%mapname%.x360.webm %mapname%.x360.webm
echo Converting finished!
pause