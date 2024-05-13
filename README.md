# Engine-Ignition-Start-and-Stall-Mod-Assetto-Corsa
A mod to enable engine ignition, start, and stall for h-pattern and manual clutch vehicles in Assetto Corsa. Enhancement of the [original work by Everlost](https://www.patreon.com/posts/assetto-corsa-99700598). 

## General Information

Everlost has done an incredible job with this mod. I've picked it up to fix specific bugs it had with clutch behavior, gear changes, and stalling. The script has been tested on a h-pattern and sequential gearbox, with manual launch, and it works great so far. If you spot an issue or have a feature request, just raise an issue here or [send me a message on Patreon](www.patreon.com/IanOmondi) and I'll look at it. Or, contribute and submit a PR.

This mod can be used individually by following the installation instructions provided when installing and by car modders, in both cases by including the full set of files (this script and the other assets available on Everlost's Patreon page). All files are FREE and installation is quick. 

Before installation, kindly check Everlost's Patreon page with the mod (linked above). This script comes automatically bundled with it for versions above 2.1 of the original mod. Everything is FREE. Using the bundled file will be much quicker.




**``Note:``** This mod is meant exclusively for manual cars, h-pattern, sequential, DCTs with manual launch, or any other vehicle that needs the use of a clutch. Don't install it for automatics or vehicles that don't need manual clutch input for launch. Also, backup your files in case you mess up the installation process. You must also have disabled automatic clutch in car controls. Finally, this is the True Ignition variant of Everlost's mod. I have not worked on any fixes, if needed, for the faked ignition variant.




## Installation

Everlost has an elaborate [installation video](https://www.youtube.com/watch?v=B1rOc_Oanfk) over on his YouTube channel. I advise you to watch it first to get a full understanding of the installation process. But here's the TLDR. 

(You can safely combine the script.lua file here with other assets in Everlost's Patreon post as long as you're installing version 2.1. Versions above 2.1 should have this script bundled with it)

### 1. Select and Manage the Car in Content Manager

Select the car you want to install the mod to, then after returning to the drive page, select manage car. Unpack the car data. Content manager should automatically open the data folder for you. Copy script.lua to the data folder. Then, go back to content manager and select pack data. Allow it to overwrite the existing file.

**``NOTE:``** The installation video suggests that you delete the data folder once you've packed the data. From my experience, this step is not necessary and won't affect how the mod works. So, you can leave the folder or delete it if you want to. 

### 2. Modify the ext_config file

If you've only downloaded script.lua from here, then head over to Everlost's Patreon and [download the full mod](https://www.patreon.com/posts/assetto-corsa-99700598) with all assets. 

When you pack the data, content manager should automatically open the vehicle's folder. Open the extension folder and copy the code inside the file 'add this data to ext_config' to the end of the car's ext_config file. Then, copy the remaining files into the folder.

If you don't have an extension folder for the car, just copy all the files under the folder 'If extension folder not exist'

That's it. Go to content manager, select drive, and enjoy a true manual experience in Assetto Corsa!


## Variables

There are two main variables you can modify in the lua script provided here to alter the car's clutch/stall behavior. These are 'clutchBitePoint' and 'stallRPM'. Current default values are 0.5 and 950 respectively.

clutchBitePoint dictates how far the clutch should be pressed to assume the transmission is completely disconnected from the engine. 0.5 represents 50% clutch input. As a default value, it works pretty well. However, if you have specific data about the car you're driving, modify this to the right value for a more one-to-one experience.

stallRPM represents the RPM below which the car stalls. The default value of 950 works great, and can challenge manual newbies trying to learn balancing or manual launch. If you have specific data for your car, adjust this to the most accurate RPM for the specific vehicle.

Generally, a combination of high bite point value (thus the clutch disengages when pressed much deeper) and high stall RPM will make for a bigger car launch/balancing challenge. 

Have fun, and if you have any comments, issues, or feedback, drop them here on the issues tab or on [my Patreon](www.patreon.com/IanOmondi) or [Everlost's Patreon](https://www.patreon.com/posts/assetto-corsa-99700598). This script will also be bundled with the [anti-lag mod](https://www.patreon.com/posts/102221221) on Everlost's Patreon page.

Cheers!
