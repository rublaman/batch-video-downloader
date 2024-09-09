@echo off
setlocal enabledelayedexpansion

REM Initialize the counter
set /a counter=1

REM Read the list file line by line
for /f "usebackq delims=" %%i in ("urls.txt") do (
  REM Generate the filename
  set "filename=video!counter!.mp4"
  
  REM Download the video using ffmpeg
  ffmpeg -i "%%i" -c copy "!filename!"
  
  echo Downloaded: !filename!
  
  REM Increment the counter
  set /a counter+=1
)