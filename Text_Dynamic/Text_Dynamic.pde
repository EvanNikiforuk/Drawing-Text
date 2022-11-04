//Global Variables
int appWidth, appHeight, fontSize;
String title = "Rich", middle = "Homie", footer = "Quan";
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
float middleX, middleY, middleWidth, middleHeight;
PFont titleFont;
color red=#FF0505,green=#05FF0F,blue=#03F4FF, resetDefaultInk=#FFFFFF; //Not night mode friendly
//
void setup() 
{
  size(500, 600); //Portrait
  appWidth = width;
  appHeight = height;
  //
  //Display Algorithm
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Population
  titleX = footerX = middleX = appWidth * 1/4;
  titleY = appHeight * 1/10;
  middleY = appHeight *4.5/10;
  footerY = appHeight * 8/10;
  titleWidth = footerWidth = middleWidth = appWidth * 1/2;
  titleHeight = footerHeight = middleHeight = appHeight * 1/10;
  //
  //Text Setup, single executed code
  //Font from OS (Operating System)
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts
  titleFont = createFont("Sitka Text", 55); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(middleX, middleY, middleWidth, middleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
  //
}//End setup
//
void draw() 
{
  fill(0,0,0);
  rect(125,65,250,50);
  if (mousePressed&&mouseX>125&&mouseX<375) {
    background(255,5,5);
  }
  fill(0,0,0);
  rect(125,275,250,50);
  if (mousePressed&&mouseX>125&&mouseX<375) {
    background(5,255,15);
  }
  fill(0,0,0);
  rect(125,485,250,50);
  if (mousePressed&&mouseX>125&&mouseX<375) {
    background(3,244,255);
  }
  //Text Draw: Repeatedly Executed Code
  fill(red); //Ink
  textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fontSize = 50;
  textFont(titleFont, fontSize);
  text( title, titleX, titleY, titleWidth, titleHeight);
  textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fill(green);
  text( middle, middleX, middleY, middleWidth, middleHeight);
  textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fill(blue);
  text( footer, footerX, footerY, footerWidth, footerHeight);
  textAlign(CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fill(resetDefaultInk);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MainProgram
