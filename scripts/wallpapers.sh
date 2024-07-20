setup() {
  feh --bg-fill --randomize --no-fehbg ~/Pictures/wallpapers/*.png
}

randomize() {
  while true; do
    setup
    sleep 300
  done
}

if [ $1 == "setup" ]
then
  setup
elif [ $1 == "rando" ]
then
  randomize
fi

