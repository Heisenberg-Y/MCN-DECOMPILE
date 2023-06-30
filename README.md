The swf file is obtained from machinations 1.0 github

this is decompiled by JPEXS free decompiler

To compile it from the source, download the fl (I choose it because it is free for trial) from https://ia903101.us.archive.org/10/items/animatearchive_FlashCS6-WIN/Adobe%20Flash%20Professional%20CS6.zip


1: open the fla file

2: click file, export as swf

3: run it using flashplayer

A little change is made in the decompiled source code to let it pass recompilation. The functionality is not thoroughly tested and does not promise to work as expected.

![screenshot](/screenshot.png?raw=true "screenshot")


## Demo

https://www.youtube.com/watch?v=JlFdfqYVOLI
(forgive my broken english, emmm)

## Project Progress
- add extra fields for connection
  - add caption fields for connection element to support property mapping
- import data file functions
  - a button is created to import csv file from filesystem, and apply the configuration
- detect file change feature
  - add a remote controller to pull the job from local server and apply these change

## Acknowledgement

The major effort spent is to do the experiment to establish flash environment and see whether it is feasible to redevelop machi and add extra 
features. And check how difficult it is. 


Since the flash is no longer supported, we are facing two choices, 1 is to insist on using the flash to develop machinations 2: to move unnecessary functionality out of machinations like using the webserver to proxy computation.

We are currently choosing the second option because the FL is not free, the lack of library and missing support from online resources, but also open to the option 1, if the follower wants to continue to contribute the machinations to provide consistent experience. Just remove the pulling components.

The framework is built and employed a webserver to accelerate the development progress, since we can
delegate some computation features which is not core part of machinations to the webserver, which reduce the pain of
developing under flash environment.

It still leaves the possibility if in the future, there is a better flash development environment, we can apply these change into mach to let it become more full-fledged application



## How to proceed

### Install the flash development environment

This is also our first time to develop flash, therefore mistakes are not avoidable, we are trying our best to setup a easy development environment under this tough times.

- Install the intellij, we need this because we need IDE to help us to check the code in the pre-compiled times, and autocomplete
- Install the Flash Flex plugin in intellij, it provides the flash library insight
- Download the Air SDK, to follow: https://airsdk.harman.com/download, and to install it by following the guidance, https://airsdk.dev/docs/basics/install/windows We might find it helpful to install Flex SDK too
- Import the machinations-decompile project
- Setup the intellij to configure the AIR SDK: https://airsdk.dev/docs/basics/setup-an-editor, This page is also useful: https://www.jetbrains.com/help/idea/2020.1/preparing-for-actionscript-flex-or-air-application-development.html
- Add the build configuration: https://www.jetbrains.com/help/idea/2020.1/building-actionscript-and-flex-applications.html

After these steps, we could see that in the intellij, we have the hints of flash library and this project class structure. The IDE can help us autocomplete and check the type, which might help. We think these settings are good to develop the features.

![screenshot](/IDE_SUPPORT.png?raw=true "screenshot")


- next is to download the https://ia903101.us.archive.org/10/items/animatearchive_FlashCS6-WIN/Adobe%20Flash%20Professional%20CS6.zip adobe flash pro, we need it to compile and debug
- open the fla, and export movie (swf), we can check the newly generated swf file and play with it

![screenshot](/FL.png?raw=true "screenshot")




### Debugging

We can add trace functionality in the code and check out the console output in the debug mode. you can check the hahaha which is using trace to log in the console

![screenshot](/DEBUG.png?raw=true "screenshot")

We also write a naive simple debugger class, to write to the file, because the console log of FL is not clear in my monitor causing eye damage.

![screenshot](/TRACE.png?raw=true "screenshot")

if we need to set the breakpoint, we might need the intellij support to run the remote debug mode and export swf file with debug options

Questions: why we need FL since we have the intellij?

Because we do not find a way to integrate flex plugin with fla files which contains the frame information, we could only generate the pure actionscript application with intellij.
If anyone find easier way to overcome this, we think it will help. But, we also think current setup is good to develop a feature


### Next steps to develop

Some element nodes are supported by the csv configuration. There is a template for adding the support in commit history.
If we want to support more element node type, we can follow that
