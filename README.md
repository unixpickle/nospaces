nospaces
========

The WindowPatch framework performs a simple method swizzle to prevent NSWindows from following the user around to all spaces.  The nospaces command-line utility simply tells dyld to load the WindowPatch framework with any Cocoa application that is loaded.

Installation
============

Simply open WindowPatch.pkg and follow the instructions on-screen.

Usage
=====

Using the ```nospaces``` command is quite simple.  Simply execute the command with a single parameter as follows:

    nospaces /path/to/application/executable

If the executable in question is compiled only for 32-bit systems, the ```--32bit``` flag can be added:

	nospaces /path/to/application/executable --32bit

Some programs (such as Photoshop CS5) do not work with nospaces for whatever reason.  Through testing I have personally found that the WindowPatch framework works with <i>most</i> Cocoa applications that take advantage of NSWindow's all-space functionality.

License
=======

nospaces is FREE SOFTWARE under the <a href="http://www.gnu.org/copyleft/gpl.html">GNU General Public License</a>.