img_path="/tmp/temp_$(date +%s).png";
maim -u -s -m 1 -l -c 0.46,0.46,0.46,0.6 ${img_path};
cb copy ${img_path};
rm ${img_path};

