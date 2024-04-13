tmpfilename="/tmp/temp_$(date +%s).png";
maim -u -s -m 1 -l -c 0.46,0.46,0.46,0.6 | tee ${tmpfilename} | xclip -selection clipboard -t image/png;

if [ -s ${tmpfilename} ]; then
	eog ${tmpfilename};
fi

rm ${tmpfilename};

