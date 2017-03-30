Installation
-
```
$ cd ~/.local/share/plasma/
$ git clone https://github.com/abhis27/kde_video_wall.git wallpapers
```

Codecs
-

For Ubuntu 16.04.* Use Following Codecs :  
```
$ sudo add-apt-repository ppa:mc3man/gstffmpeg-keep
$ sudo apt update
$ sudo apt install libgstreamer-plugins-bad1.0-0 \
   gstreamer0.10-plugins-good gstreamer0.10-plugins-base \
   gstreamer0.10-plugins-base-apps
$ sudo apt install libav-tools libavcodec-extra \
   libavutil-dev mencoder ffmpeg
$ sudo apt-get install gstreamer1.0-libav gstreamer0.10-ffmpeg
$ rm -R ~/.cache/gstreamer-1.0
```

Debug
-
```
$ kquitapp plasmashell
$ plasmashell
```
> Goto Wallpaper Settings & Re-Select the Video wall , Then catch Errors in Above Terminal & Fix YourSelf  :(

![Where is My Image?](http://orig14.deviantart.net/4454/f/2017/089/1/9/screenshot_by_abhis27-db40q6e.jpg)
> Have a Nice Time !!!

[[ LICENSE ]](http://www.wtfpl.net/txt/copying/)
