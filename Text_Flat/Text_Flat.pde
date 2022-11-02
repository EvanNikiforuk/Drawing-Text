//Global Variables
int appWidth, appHeight, fontSize;
String title = "Wahoo";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color blue=#03F4FF, resetDefaultInk=#FFFFFF; //Not night mode friendly
//
size(500, 600); //Portrait
appWidth = width;
appHeight = height;
//Copy the Display Algoirthm Later
//
//Population
titleX = appWidth * 1/4;
titleY = appHeight * 1/10;
titleWidth = appWidth * 1/2;
titleHeight = appHeight * 1/10;
//
//Text Setup, single executed code
//Font from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts
titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
//
//Text Draw: Repeatedly Executed Code
fill(blue); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
fontSize = 50;
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
fill(resetDefaultInk);
