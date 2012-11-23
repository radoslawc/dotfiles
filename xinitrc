xrdb -load .Xresources &

/home/racm/.screenlayout/a.sh &

xset b off
(sleep 4s && conky | dzen2 -x '2157' -e '' -fg '#dcdcdc' -bg '#1d1d1d' -w '650' -ta c  -p -fn "-*-terminus-medium-r-*-*-16-*-*-*-*-*-*-*" ) &
ck-launch-session /home/racm/dwm_dev/dwm-6.0/dwm 


