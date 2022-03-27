# check brightness
# /sys/class/backlight/intel_backlight/brightness
bright(){
	echo "echo "$(($1 * 65535 / 255))" > /sys/class/backlight/intel_backlight/brightness"
}
