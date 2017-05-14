killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

for OUTPUT in $(polybar -m | cut -d ':' -f1); do
	echo "MONITOR=$OUTPUT polybar top &"
	MONITOR="$OUTPUT" polybar top & 
	echo "$CONFIG launched on $OUTPUT"
done

#polybar top &
