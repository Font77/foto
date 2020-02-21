for ((i=0;i<100;i++)) ; do
convert ../heksoen/heksane9_200.png -resize $i% -background none -gravity center -extent 512x512 miff:-
done | convert miff:- -delay 80 anim.gif
