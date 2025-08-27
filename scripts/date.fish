#!/usr/bin/fish
set -l date (date "+%y年 %b%d日")
set -l day_of_week (date "+%A")
printf "%s\n     %s" $date $day_of_week
