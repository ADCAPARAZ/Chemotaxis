 //declare bacteria variables here  
 Bacteria bob; 
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1000,1000);
 	bob = new Bacteria();
 }   
 void draw()   
 {    
 	background(255);
 	bob.walk();
 	bob.show();
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
 		myX = (int) (Math.random() * 1000);
 		myY = (int) (Math.random() * 1000);
 	}
 	void show()
 	{
 		fill(0,0,hue);
 		ellipse(myX, myY, 50,50);
 	}
 }    