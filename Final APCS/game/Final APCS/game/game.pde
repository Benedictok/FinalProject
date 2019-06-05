PImage img;

Cards[] cards = new Cards[8];
int[] x = new int[8];
int[] y = new int[8];
int[] fv = new int[8]; 

void setup(){
  img = loadImage("Fairy_Tail_Banner (1).png");

  int myX =10;
  int myY = 10;
  int myFv = 0;
  size(953,654);
  
  for(int i=0; i < 8;i++)
  { 
    y[i]= myX;
    x[i]= myY;
    fv[i]= i+1;
    if(myX<200)
    {
      myX+= 290;
    } else if (myX >200)
    {
      myX =10;
      myY+=247;
    }
  }
  
  for(int i=0;i<8;i++)
  {
    cards[i] = new Cards(x[i],y[i],fv[i]);
  }
}
  
  
  
  
  
  
  
  

  

void draw(){
  image(img,0,0);
  for( int i=0;i<8;i++)
  {
    cards[i].display();
  }
  
  if (mousePressed)
  {
    flipme();
  }
}

void flipme()
{
  for(int i=0;i<8;i++)
  {
    if(mouseX>x[i]&&mouseX<(x[i]+250)&& mouseY > y[i])
    {
      cards[i].displayFront();
    }
  }
}
  
