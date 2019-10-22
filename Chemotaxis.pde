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
 	int myX, myY, hue;

 	Bacteria()
 	{
 		myX = 750;
 		myY = 250;
 		hue = (int) (Math.random() * 255);
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
 	}
 	void show()
 	{
 		fill(0,0,hue);
 		ellipse(myX, myY, 50,50);
 	}
 }    