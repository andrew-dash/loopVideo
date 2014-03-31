loopVideo
=========

Raspberry Pi auto-loading video looper using omxplayer.

- clone repo to /home/pi/
- Make the script executable with:
~~~
sudo chmod a+x ./loopVideo.sh
~~~

- sudo mkdir video in home diretory (/home/pi)
- place video(s) in /video directory
- sudo nano /etc/profile
- insert the following three lines of code at the bottom of profile:
~~~
setterm -term linux -background black
setterm -term linux clear
./loopVideo.sh
~~~
--> This will set the terminal background to black and clear the text

Although this will loop the video there is a 1 second black screen between stop and start

(ctrl + c to stop playing at any time)

- to automically login:

sudo nano /etc/inittab

- scroll down to and comment out: (with "#")
 ~~~
1:2345:respawn:/sbin/getty 115200 tty1
~~~
- then enter in the next line:
~~~
1:2345:respawn:/bin/login -f pi tty1 </dev/tty1 >/dev/tty1 2>&1
~~~
- Save and exit. Pi will automatically login and play/loop your videos


TO-DO:

- seamlessly loop videos 

REFERENCE:

Script code from:
http://www.cenolan.com/2013/03/looping-video-playlist-omxplayer-raspberry-pi/

Auto-login code from:
http://elinux.org/RPi_Debian_Auto_Login

