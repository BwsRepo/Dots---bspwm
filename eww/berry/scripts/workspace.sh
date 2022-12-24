#!/usr/bin/env bash


workspaces() {

ws1='0'
ws2="1"
ws3="2"
ws4="3"
ws5="4"
ws6="5"

un="nofocus"

#check if workspace is focused 
f="workspace_indicator"
f1=$(wmctrl -d | sed -n '1 p' | awk '{print $2}') 
f2=$(wmctrl -d | sed -n '2 p' | awk '{print $2}')  
f3=$(wmctrl -d | sed -n '3 p' | awk '{print $2}')  
f4=$(wmctrl -d | sed -n '4 p' | awk '{print $2}')  
f5=$(wmctrl -d | sed -n '5 p' | awk '{print $2}')  
f6=$(wmctrl -d | sed -n '6 p' | awk '{print $2}')  

ic_1=""
ic_2=""
ic_3=""
ic_4=""
ic_5=""
ic_6=""


if [ "$f1" == '*' ]; then
    ic_1=""
elif [ "$f2" == '*' ]; then
    ic_2=""
elif [ "$f3" == '*' ]; then
    ic_3=""
elif [ "$f4" == '*' ]; then
    ic_4=""
elif [ "$f5" == '*' ]; then
    ic_5=""
elif [ "$f6" == '*' ]; then
    ic_6=""
fi

echo 	"(box	:class \"workspaces\" :halign \"center\"	:orientation \"h\" :space-evenly \"true\" (button :onclick \"wmctrl -s 0\"	:class	\"$f\"	\"$ic_1\") (button :onclick \"wmctrl -s 1\"	:class \"$f\"	 \"$ic_2\") (button :onclick \"wmctrl -s 2\"	:class \"$f\" \"$ic_3\") (button :onclick \"wmctrl -s 3\"	:class \"$f\"	\"$ic_4\") (button :onclick \"wmctrl -s 4\"	:class \"$f\" \"$ic_5\")  (button :onclick \"wmctrl -s 5\"	:class \"$f\" \"$ic_6\"))"


}
workspaces
xprop -spy -root _NET_CURRENT_DESKTOP | while read -r; do
workspaces
done