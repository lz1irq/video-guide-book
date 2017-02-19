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

Video can be transported over normal IP networks using UDP. For this, you need to pick codecs for the video and audio and a container.

For UDP the container that currently works is __MPEG-TS__ (MPEG Transport Stream). The codecs are usually H.264 for video and AAC for audio.

There are some advantages to using MPEG-TS over UDP:

* Loose coupling - you can start the transmitter and it will run regardless of the receiver being there (unlike anything TCP-based).
* Multipoint transport - you can use multicast addresses and read the stream from more than one place.
* It runs over any IP network, which in a lot of cases saves on cabling, as the network already exists.

The tool used to push/receive streams over MPEG-TS/UDP is __ffmpeg__.

Notes:

* Packet loss on the network results in problems/errors in the received streams.
* There are some extensions that add __FEC__ (Forward Error Correction) to the MPEG-TS stream, but as of January 2017 they're not in mainline ffmpeg.
* Note that running UDP over the wide Internet will not work very well. A TCP based protocol is recommended because of the packet loss.
* Some networks or network devices create problems with heavy multicast traffic and this needs to be thoroughly tested before use in production.
* As of January 2017 IPv4 multicast works flawlessly, IPv6 multicast doesn't on the receiving side.
* As some tests have shown, it's impossible to start any multicast stream before you have network connectivity and a default route, which is a problem in some cases.
* Under Linux (at least) it's important to raise the kernel net.rmem_max, net.rmem_default, net.wmem_max, net.wmem_default to around 8MB to prevent drops because of overflowing buffers.


###RTMP

__RTMP__ is a protocol developed by Macromedia (now bought by Adobe) for Flash streaming. Nowadays it's used as a transport method for streams
to restreaming servers. It runs over TCP and is supported by most platforms (like Twitch, Youtube, Facebook). It's also supported by nginx with mod_nginx_rtmp,
which is one of the easiest ways to create a restreaming server/service.

The tools that support this are a lot, including __ffmpeg__, __OBS__ and a ton of gaming streaming software.

Note that packetloss in the network might result in delays or dropping of the connection altogether.

###Converters

There are many situations in which you will need to convert to and from different interfaces. For example,
you may need to run a 50 meter cable to a projector which has only HDMI and/or VGA inputs. Your only option is to run an SDI
cable followed by a converter. You will use different converters a lot, so it's a good idea to have at least one for each pair
of different interfaces you may need. Keep in mind that converters are unidirectional - an HDMI to VGA converter cannot convert
VGA to HDMI. Also check whether the connectors are the appropriate male/female plug, depending on your cables. Do not forget
that converters Don't forget that converters are not passive devices - they need a power supply, typically 5, 9 or 12 volts.

Fortunately, converters are not overly expensive - they can be found in the 20-30 US dollar range on eBay with free shipping
from China. You may also be able to source them locally, but chances are you will pay a lot more than they are worth. Of course,
there are companies such as Blackmagic Design^[https://www.blackmagicdesign.com/] that produce high-quality converters, which are
great if you can afford them.

Here are some pictures of converters we've used and are happy with. When it comes to the Chinese, no-name ones, 
there is no point in looking for a specific seller - if what you see on the listing matches the pictures here, chances are it is the same device.

![A HDMI to SDI converter](images/ch03/hdmi_sdi_converter.jpg){height=70%}  

![A HDMI to VGA converter](images/ch03/hdmi_vga_converter.jpg){height=70%}

![A SDI to HDMI converter](images/ch03/sdi_hdmi_converter.jpg){height=70%}

## Sources

### Cameras

### Computers and scalers

Often the speakers at your event will want to show slides or other media alongisde their talk. 
They may bring their own laptop, or you can provide them with one. In any case, you will want 
the output from the computer to be the same resolution as your other video sources for various
reasons. Hardware switchers such as the ATEM (see below) require all video signals to be the same
resolution and framerate. For software switches, it is better for latency and computing resources
to avoid interpolating.

The way to achieve this is by using a scaler - a device that accepts a video signal in a wide range
of resolutions and outputs a single resolution (adjustable on most models). 

#### Atlona

The Atlona AT-HD510VGA video scaler takes a VGA plus audio input and provides HDMI plus audio.
The output resolution is set using the `MENU`, `+`, and `-` buttons. It is best to connect it before
the event to a monitor, because the resolution menu is displayed as an overlay on the scaled output
image.

This particular model has been discontinued, but we still find it to be adequate. You may need to 
use an HDMI converter since computers with VGA outputs are getting more and more rare.

![Atlona AT-HD510VGA VGA scaler^[http://atlona.com/product/at-hd510vga/]](images/ch03/atlona.jpg)

#### Chinese videoscaler

This Chinese video scaler (which can be found on AliExpress under the name "ALL to SDI Scaler Converter" for about $120 US)
has some advantages over the Atlona. First, it provides two SDI (they produce an indentical signal). This can come in handy
since a lot of the time the stage is far away from the control desk and you need a long cable to transport the signal from
the lecturer's computer. Second, it has different input interfaces - HDMI, DVI, VGA, and composite.

![ALL to SDI Scaler Converter^[https://www.aliexpress.com]](images/ch03/chinese_scaler.jpg)


