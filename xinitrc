xrdb -load .Xresources &
sleep 3
/home/racm/.screenlayout/a.sh &
sleep 3 

xset b off &
setxkbmap -layout "pl" -option "ctrl:nocaps" &

/home/racm/dwm_dev/dwm-status &
exec /home/racm/dwm_dev/dwm

