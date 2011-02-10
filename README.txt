   **The intended use is for Arduino with ATMEGA328P**

RELEASE NOTES:

	02-09-11 - document and directory creation -sg



This is an example directory structure for an AVRStudio4 IDE project that targets the Arudino.

There is a folder for the library, output and also source code

When pulled the head folder name can be changed to the name of the software project.

A few notes to follow when creating a project in AVRStudio.

   - Configuring the project to use this structure

     - Create a new project
       - Place the project in the renamed directory
       - Head folder name and project name should match
     	
     - Choose the Device and Simulator
       - For our purposes this is Simulator2 and atmega328p

     - One the IDE is launched choose Project -> Configuration Options
       - Output file directory should be changed to - output\
       - Output File name should be changed from <project name.elf> to Arduino.elf
       - Device should be atmega328p
       - Frequency should be 16000000 hz
       - Click on Include directories and add source\ and library\
       - Click on Custom options and edit -std.  Change from gnu99 to c99 (for cpp projects only)
       - Click ok to close the dialog

     - Click on Tools -> Customize
       - Choose the Tools tab
       - Under Menu Context click the new folder and add "Download via AVRdude"
       - In the command line browse to the directory location that this project was extracted
	 to and open the output folder choosing upload.bat as the file (you may need to change
	 the file extension filter to .bat to see the file)
       - The initial directory should be the same directory ending in output\ (without the file)
       - Click close and exit the dialog.


For all newly created source files they should be located in the source\ folder and any
libraries archives should be placed in the library\ folder.

When a sucessful hex file has been built - click Tools -> Download via AVRdude

The command window should launch and program the device.



*** IF your Arduino is not on COMport 19 - YOU WILL HAVE TO CHANGE THE pORT NUMBER INSIDE OF THE 
	BATCH FILE BEFORE USE, otherwise the download will not complete.