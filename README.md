http://www.iasptk.com/ubuntu-16-04-create-animated-gif/
sudo apt-get install ffmpeg imagemagick
ffmpeg -ss 00:00:20 -i sample.mp4 -to 10 -r 10 -vf scale=200:-1 cutekid_cry.gif
-ss : indicates the starting point of GIF
-i : input file
sample.mp4 : My video file name
-to : End position of the GIF file
-r : frame rate. You can increase the value to get more quality GIF file
-vf : filter graph. To scale the GIF image in the desired size.
convert -delay 120 -loop 0 *.gif cutekids_crying.gif
convert -delay 120 -loop 0 *.jpg linux.gif
-delay 120 : The GIF animation speed
-loop 0 : Infinite loops of the animation.

$ convert '*.jpg[200x]' resized%03d.png
convert "images/*.jpg[250x]" -set filename:base "%[base]" "images/new_folder/%[filename:base].jpg"
find /folder -iname '*.JPG' -exec convert \{} -verbose -set filename:base "%[base]" -resize 1920x1080\> "/folder/images/%[filename:base].JPG" \;
$ convert '*.jpg[300x>]' thumb-300-%03d.png
$ convert '*.jpg[300x<]' thumb-300-%03d.png
http://www.imagemagick.org/script/command-line-processing.php#geometry
