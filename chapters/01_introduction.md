Introduction
============

Before talking at length about the various pieces of hardware and software that make a video streaming and/or recording
setup tick, we first need to show what a generic such setup looks like and describe it's high-level components. 

__Note:__ Please keep in mind that this is only a reference model and your arrangement does not need to adhere to it.
If your needs can be met by a less complicated setup, strip out what is unnecessary. If you need something more complicated,
do not be afraid to scale up, mix and match different components, and experiment.

Our example setup consists of the followng components:

* __Video sources__ - this can be anything that produces a video signal. A typical combination
is a video camera pointed at the presenter and the video output from their computer, carrying
the presentation slides.

* __Video switcher/mixer__ - a device or a piece of software that allows you to switch between
different sources of video, do smooth transitions, picture-in-picture (PIP) output and much more.

* __Video sinks__ - these are the devices that "consume" the switcher's output. This group typically
includes a projector, some sort of streaming devices (which will push video frames to a restreamer
on the local network or somewhere on the Internet) and a video recorder.

* __Audio sources__ - usually microphones, but can also be the sound output from the presenter's
laptop. Please do not rely only on the camera's built-in microphone(s), because your viewers will hear
mostly noise.

* __Audio mixer__ - this is where all your audio sources are combined (mixed) together so you can
provide a single stream for the hall's PA (public announcement) system and your recording/streaming
devices. Each source's signal level (volume) can be controlled separately.

![Generic streaming and recording setup](images/ch01/overview.png)


