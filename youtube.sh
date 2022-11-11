#!/bin/bash

# $1: 유튜브 URL
# $2: 파일이름 + .mp4

cd ~
mkdir upload
cd upload

if [ ! -d ~/upload ]; then
  mkdir ~/upload
fi

FILE=~/upload/yt-dlp
if [ ! -e $FILE ]; then
  echo "File not exists."
  wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
fi
chmod u+x yt-dlp # 실행 권한 문제
./yt-dlp -f 140 $1 -o $2
