//Global Variables
int appWidth, appHeight;
String title = "Wahoo";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
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
//Font form OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all posible fonts
titleFont = createFont("Goudy Stout", 55); //Verify the font exists in processing.JAVA
// Tool / Create Font / Find Font / DO NOT PRESS "OK", known bug
//
//Layout our text space typographical features
rect(titleX, titleY, titleWidth, titleHeight);
//
//Text Draw: Pepeatedly Executed Code
text( title, titleX, titleY, titleWidth, titleHeight );
