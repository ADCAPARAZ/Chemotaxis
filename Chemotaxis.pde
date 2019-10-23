 //declare bacteria variables here  
 Bacteria[] bob; 
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1000,1000);
 	bob = new Bacteria[100];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(100);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].walk();
 		bob[i].show();
 	}
 }
 class Bacteria    
 {     
 	int myX, myY, hue, circleX, circleY;

 	Bacteria()
 	{
 		myX = 750;
 		myY = 250;
 		hue = (int) (Math.random() * 76) + 179;
 	}
 	void walk()
 	{
 		if (mouseX > myX){
 			myX = myX + (int) (Math.random() * 10) - 1;
 		} else {
 			myX = myX + (int) (Math.random() * 10) - 10;
 		}

 		if(mouseY > myY){
 			myY = myY + (int) (Math.random() * 10) - 1;
 		} else {
 			myY = myY + (int) (Math.random() * 10) - 10;
 		}
 		if((mouseX > myX) && (mouseY > myY)){
 			circleX = circleX - 10;
 			circleY = circleY - 10;
 		} else {
 			circleX = 50;
 			circleY = 50;
 		}
 	}
 	void show()
 	{
 		fill(0,hue,255);
 		ellipse(myX, myY, circleX,circleY);
 	}
 }    