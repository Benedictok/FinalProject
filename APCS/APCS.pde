PImage img;

Cards[] cards = new Cards[8];
int[] x = new int[8];
int[] y = new int[8];
int[] fv = new int[8]; 

void setup(){
 
  int myX = 27;
  int myY = 27;
  int myFv = 0;
  size(900,600); 
  img= loadImage("Fairy_Tail_Banner (1).png");            
  img.resize(900,600);       
  
  for(int i=0; i < 8;i++)
  { 
    y[i]= myX;
    x[i]= myY;
    fv[i]= i+1;
    if(myX<200)
    {
      myX+=300;
    } else if (myX >200)
    {
      myX =27;
      myY+=225;
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
    if(mouseX>x[i]&&mouseX<(x[i]+300)&& mouseY > y[i])
    {
      cards[i].displayFront();
    }
  }
}
  
