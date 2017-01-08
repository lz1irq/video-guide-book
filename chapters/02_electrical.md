Electrical
==========

(TODO: find a person who knows more about electricity to explain things better)

## Health and safety warnings and procedures

Having proper mains (230 or 110 volts, depending on where you live) wiring to the power supply units of your equipment is
extremely important not only for its normal functioning, but also __for your life and health__. You need to make sure all power
outlets you are using are well-grounded. If you are wary of working with mains wiring or your local rules and regulations
forbid untrained persons from doing so, please find a certified electrician who can make any needed modifications to the
electrical installation of the venue.

If you still feel like messing with electrical wiring, please follow some basic safety procedures:

* __ALWAYS__ turn off circuit breakers which control current in the part of the installation you are working on. __ALWAYS__ verify
that they are turned off by measuring the wiring with a voltage meter, a mains tester^[https://en.wikipedia.org/wiki/Test_light], or another 
measurement tool _which you know to be in working condition_. Even if you are working with a person who is completely sure that they have
turned the power off - measure it first.

* Mark the turned off breakers in a way that indicates they have been turned off on purpose. You do not want someone to turn them on, thinking
they are being helpful, while you are touching exposed wires.

* Make sure you are not grounded well so that less current will flow through you in case you touch a live wire - thick rubber boots and mats made from non-conductive material help.

* If you are opening up a device with large capacitors in its power supply (such as a TV or a desktop computer), unplug it from the power socket and wait a few minutes before taking it apart.
Better yet, short out the power plug (after unplugging it) with an insulated screwdriver to drain out the capacitors. __People have died__ from accidentally discharging such capacitors.

## Ground loops 

All your equipment that has interconnecting cables (such as a camera and a video switcher) should be wired to the same ground. Ideally, _all_ your equipment
shares a common ground. Otherwise you risk creating ground loops^[https://en.wikipedia.org/wiki/Ground_loop\_(electricity)] - you are giving electrical
current multiple paths to ground itself. These loops make excellent antennas for all kinds of electromagnetic interference which results in lots of
noise on analog transmission lines such as most audio cabling. 

The easiest way to make sure this does not happen, is to always have large enough power strips wherever you are recording. __Do not even think__ about
doing ground lifts (removing grounding on one side of the connected equipment). While ground loops by themselves are very rarely dangerous,
performing a ground lift is a sure way to expose people to high voltages from unexpected sources - such as a microphone.

## Bootleg grounding

Regular power outlets should have 3 wires - line (live), neutral, and ground. However, there might be cases where no grounding wire is available
and a so-called "bootleg ground" connection needs to be made - a jumper (a piece of wire) between the neutral and ground pins. __Be very careful__ not
to connect the jumper between the live wire and the ground! This is called "reversed bootleg" grounding and is very dangerous, especially if you
have equipment with grounded metal cases. If you are experiencing electrical shocks from any part of your gear, you probably have such a
situation on your hands.

