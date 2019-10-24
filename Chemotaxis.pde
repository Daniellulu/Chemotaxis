Bacteria [] no;
int score = 0;
 void setup()   
 {     
 	size(700,700);  
  background(0);
  no = new Bacteria [10];
  for(int i = 0; i< no.length; i++)
  no[i] = new Bacteria(350,350, (int)(Math.random() * 255));
 }   
 void draw()   
 {    
  /*
    long elapsedTime = System.currentTimeMillis();
long elapsedSeconds = elapsedTime / 1000;
score += elapsedSeconds % 60;
*/
  for(int i = 0; i < no.length; i++){
   no[i].move();
 	  no[i].show();
 score++;
 
 if(get(mouseX,mouseY) != color(0,0,0))
{
 
  background(0);
  fill(255);
  textSize(50);
  text("Your score is: " + (int)(score/10), 150,350);
    text("Refresh to play again", 100,550);
  score = 0;
  noLoop();
  break;

}
  }
  
 }  
 class Bacteria    
 {     
   int myX, myY, col, col1, col2, col3;
   
 	 Bacteria(int x, int y, int colour)
 {
   myX = x;
   myY = y;
   col = colour;
   col1 = (int)(Math.random() * 255);
   col2 = (int)(Math.random() * 255);
   col3 = (int)(Math.random() * 255);
   
 }
  void move()
  {
    myX += (int)(Math.random() *7) -3;
     myY += (int)(Math.random() *7) - 3; 
  }
  void show()
  {
    if(mousePressed){
      col1 = (int)(Math.random() * 255);
   col2 = (int)(Math.random() * 255);
   col3 = (int)(Math.random() * 255);
    }     
    fill(col1,col2,col3);
    stroke(col1,col2,col3);
    if(mouseX > myX){
      myX += (int)(Math.random() *7) -2; 
    }
    if(mouseX < myX){
      myX += (int)(Math.random() *7) -4; 
    }
    if(mouseY > myY){
      myY += (int)(Math.random() *7) -2; 
    }
    if(mouseY < myY){
      myY += (int)(Math.random() *7) -4; 
    }
    ellipse(myX,myY, 10,10);

  }
 }
