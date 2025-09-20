Lab1_SSEG.srcs can be ignored. It does not contain the relevant source files. All the source files needed can be found in the "Necessary Source Files" folder. Please view the Design-Sources.png to see what heirarchy of source files to use.

The screenshots I took that helped me identify where my issues were can be found in the screenshots folder.

The constraint file I used is available here as well.

In the most recent resubmission, I revised the case statement within top.sv to fix which anodes os the seven-segment display were receiving power. I also created a tick input for my_adder.sv and passed in the clock as clk rather than passing in tick as clk. An breif explanation of my debugging revelation can be seen in the youtube video included in the report. Please watch with subtitles on since I was speaking quietly.
