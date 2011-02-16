   **The intended use is for Arduino with ATMEGA328P**

RELEASE NOTES:

	02-09-11 - document and directory creation -sg

	02-16-11 - changes to the way that AVRDude is incorporated into AVRStudio -sg



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
       - Output File name should be the same as the project file name (with the .elf extension)
       - Device should be atmega328p
       - Frequency should be 16000000 hz
       - Click on Include directories and add source\ and library\
       - Click on Custom options and edit -std.  Change from gnu99 to c99 (for cpp projects only)
       - Click ok to close the dialog

  *This step is only done once*
     - Make sure upload.bat is moved from the Project name directory and placed at the AVRStudio 
       projects root directory
     - Click on Tools -> Customize
       - Choose the Tools tab
       - Under Menu Context click the new folder and add "Download via AVRdude"
       - In the command line browse to the base directory for all of your AVRStudio projects.
         For example I use B:/Atmel Projects/
         The file extension filter should be changed to *.bat to see the file and the location 
         should be the AVRStudio root directory.  Choose the file named upload.bat
       - The initial directory should be the same AVRStudio root directory
       - There are 2 parameters for this batch file.
           **The first is the COM port that the Arduino is on your machine (eg. 15 or 2)
           **The second is the file name that is to be downloaded.  You need work from the initial 
             directory as change above.  If you project is in folder Test which is stored at the 
             root directory of Atmel Projects then your argument would be Test\output\test.hex for 
             parameter 2.  the parameter line would look something like - 19 Test\output\test.hex 
             where ( <COM #> <project folder\output\project name.hex> )
       - Click close and exit the dialog.


For all newly created source files they should be located in the source\ folder and any
libraries archives should be placed in the library\ folder.

When a sucessful hex file has been built - click Tools -> Download via AVRdude

The command window should launch and program the device.


