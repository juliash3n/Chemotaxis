plankton [] ballet = new plankton[200];
boolean toplight = false;
boolean bottomlight = false;

class plankton {
  int myX, myY;
  
  plankton(){
  myX = 250;
  myY = 250;
  }
  
  void dance(){
    if(mouseX > myX){
    myX = myX + (int)(Math.random()*5)-1;
    }
    else{
    myX = myX + (int)(Math.random()*5)-3;
    }
    if(mouseY>myY){
    myY = myY + (int)(Math.random()*5)-1;
    }
    else{
    myY = myY + (int)(Math.random()*5)-3;
  }
  //  if(toplight == true){
  //  //top light
  //  if(myX>100){
  //  myX = myX + (int)(Math.random()*5-4);
  //  }
  //  if(myY>100){
  //  myY = myY + (int)(Math.random()*5-4);
  //  }
  //  }
    
  //  else if(bottomlight == true){
  //  //bottom light
  //  if(myX<400){
  //  myX = myX + (int)(Math.random()*5)-1;
  //  }
  //  if(myY<400){
  //  myY = myY + (int)(Math.random()*5)-1;
  //  }
  //  }
    
  //  else
  //  myX = myX + (int)(Math.random()*5)-2;
  //  myY = myY + (int)(Math.random()*5)-2;
  }
  
  void show(){
    ellipse(myX,myY,10,10);
  }
    
} //end of plankton

void setup(){
  size(500,500);
  for(int i = 0; i<ballet.length; i++){
  ballet[i] = new plankton();
  }
}

void draw(){
  background(3, 41, 145);
  fill(105, 23, 23);
  stroke(1);
  ellipse(0,470,200,400);
  ellipse(500,470,200,400);
  ellipse(0,0,450,650);
  ellipse(500,0,450,650);
  
  for (int x = 20; x<481; x+=75){
  ellipse (x, 0, 100,80);
  }
  for(int i = 0; i<ballet.length; i++){
    stroke(1);
    fill(167, 188, 209);
    ballet[i].show();
    ballet[i].dance();
    //mouselight
    noStroke();
    fill(252, 243, 182);
    ellipse(mouseX,mouseY,15,15);
    //lightpillars
    //ellipse(100,100,50,50);
    //ellipse(400,400,50,50);
  }
}
