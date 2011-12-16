# Selenium IDE: Flow Control

Adds flow control to Selenium IDE.

## Requirements

* Selenium IDE 1.0.5 or later
 
To build on Windows you will need 7-Zip and Robocopy:

* 7-Zip - http://www.7-zip.org/
* Robocopy - http://en.wikipedia.org/wiki/Robocopy

## Installation

From AMO:

* Open https://addons.mozilla.org/en-US/firefox/addon/flow-control
* Click 'Add to Firefox'

From source:

* Run build.bat (or build.sh on Linux).
* Open flowcontrol.xpi in Firefox.

## Documentation

### Commands

* label - target label.
* gotolabel - unconditional jump.
* gotoIf - conditional jump.
* while/endWhile - cycle.
* addCollection - instantiate a collection.
* addToCollection - adds a value to the indicated collection (JSON objects are ok).
* storeFor - retrieves the next available value from your collection and stuffs it into the indicated temporary variable. If there's no value available it jumps to the endFor.
* endFor - marks the end of the execution block.

### Examples

See demos folder for examples of all commands.

## Credits

* Andrey Yegorov - Created the original flow control extension
* Darren DeRidder - Modified the original extension for Selenium IDE
* Adam Goucher - Author of the Selenium IDE plugin API 
* Dave Hunt - Packaged extension as a plugin
* Martin "Hasan" Bramwell - Added For/Each looping (as seen in Java)
