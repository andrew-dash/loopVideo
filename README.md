loopVideo
=========

Raspberry Pi auto-loading video looper using omxplayer.

1. clone repo to /home/pi/
2. sudo mkdir video in home diretory (/home/pi)
3. place video(s) in /video directory
4. sudo nano /etc/profile
5. insert the following three lines of code at the bottom of profile:

setterm -term linux -background black

setterm -term linux clear

./loopVideo.sh

--> This will set the terminal background to black and clear the text

Although this will loop the video there is a 1 second black screen between stop and start

(ctrl + c to stop playing at any time)

6. sudo reboot
7. after logging in the video should start playing immediately.

TO-DO:

1. implement auto login on the pi 
