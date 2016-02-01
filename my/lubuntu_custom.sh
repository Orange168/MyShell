#!/bin/bash
#2016-02-01 10:23:17
#by lao lin
E_OPTERR=65
if [ "$#" -eq 0 ];then 
	echo 'Default invoke two screen !'
	xrandr --output HDMI1 --auto --right-f LVDS1
else
	set -- `getopt "apdg" "$*"`
	while [ ! -z "$1" ];do
	case "$1" in
	-a) coproc android-studio;;
	-p)	coproc playonlinux --run "PDFXCview" %F 
		echo 'coproc pdf';;
	-d) coproc goldendict ;;
	-g) coproc google-chrome;;
	*) break ;;
	esac
	shift
	done
fi
