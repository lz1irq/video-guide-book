Video
=====

## General

### Resolution, aspect ratio and refresh rate

__Video resolution__ specifies the dimensions of a frame in pixels - individual dots, which make up everything you see on a
computer screen. Resolution is written down in the WIDTHxHEIGHT format. Today, you are most likely to work with 1280x720 (HD, or also 720)
or 1920x1080 (Full HD, or also 1080) resolutions, as 4K gear is still extremely expensive and uncommon unless you do this professionally.
Older equipment may use resolutions such as 800x600, 1024x768, or 1280x1024.

If present the resolution as a fraction and reduce the numerator and denominator, you will get the __aspect ratio__ - a
measurement of width to height proportion of the frame. HD and Full HD are have an aspect ratio of 16:9, while older
gear commonly uses a 4:3 aspect ratio. 

The __refresh rate__ indicates how often the image on the screen is redrawn. The measurement unit here is hertz (Hz) which
indicates how many times per second a certain event occurs. Common refresh rates in video qeuipment are 50 and 60Hz, tied to the frequency
of the electrical network in Europe and the USA respectively.

### Interlace video and progressive scanning

Another thing to consider is __interlaced video__ vs. __progressive scanning__. They are often marked using the letters
__i__ or __p__ respectively after the resolution - most commonly 720p or 720i. 

Interlaced video comes from analogue video systems where, to save bandwith, one frame held the oddly numbered image lines, while the next held only
the evenly numbered ones. Since frames are drawn rather faster than the human brain can perceive the change, we see the full image and not halves.

Progressive scanning means that each row of the image is drawn sequentially. While using twice the bandwith, movement in progressive scan video
appears smoother. Unfortunately, our experience shows that some devices have issues with progressive video and we are forced to use interlaced.


A quick way to convay all this information is something like 720i50 - this means 720 progressive scan video at a 50 hertz refresh rate.

### Formats and encodings

## Interfaces

###HDMI

HDMI (High-Definition Multimedia Interface) is digital audio-video interface. It is electrically compatible with DVI-D so you do not
need special converter boxes between two - just a cable with different connectors on both ends. Most HDMI cables you use will likely be
no longer than 13-15 meters^[https://en.wikipedia.org/wiki/HDMI#Cables].

HDMI is primarily used for short-distance audio-video transfer from and to consumer devices (such as laptops and most common projectors), although some recording
equipment is also compatible with it since it's so wide-spread. You are most likely to encounter only the standard HDMI connector (see image below),
although laptops with Micro HDMI exist and it may be useful to have a Micro HDMI to HDMI cable.

![Left ro right: HDMI, HDMI Mini and HDMI Micro connectors^[image by SIMOBORTOLO, CC BY-SA 4.0]](images/ch03/hdmi_connectors.png){height=30%}

###SDI

__SDI__, or __serial digital interface__, is found mostly in professional grade equipment. We are concerned mostly with the HD-SDI since it allows transport
of 720/1080 streams with audio. SDI mostly uses 75-ohm coaxial cable reaching a length of 300 meters, which is very helpful when the projector is located
at the other end of the room or you have cameras spread around the entire event hall, far away from the control desk.

Depending on where you live, SDI cables may not be readily available. Even if they are, you are unlikely to find longer cables (such as 30 meters)
pre-made and will have to make them yourself. This is not very difficult and tutorials^[http://www.business2community.com/tech-gadgets/building-your-own-sdi-cables-from-scratch-0460084]
can easily be found online.

(TODO: Take a picture of an SDI cable)

###VGA

__VGA__ (__Video Graphics Array__) is an older standard that is still found on some (business-class) laptops and projectors. Despite its age, it
is capable of carrying Full HD video over shorter distances with acceptable quality. Maximum cable length varies wildly depending on video 
resolution and cable quality, but you should probably not try anything above 15 meters.

![A male VGA connector](images/ch03/vga.jpg){height=30%}

###UDP

###RTMP

###Converters
