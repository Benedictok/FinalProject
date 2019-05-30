cards s;
Rules r;
cards [] mycards = new cards[8];
int [] x = new int[8];
int [] y = new int[8];
int [] fv = new int [8]; 



void setup() {
  int myX = 15;
  int myY = 15;
  int myFv =0;
  size(500,600);
  //r = new Rules();
  
  for(int i =0; i<8;i++)
  {
    y[i]= myY;
    x[i]=myX;
    fv[i]= i + 1;
    if(myY<345)
    {
      myX +=115;
    }else if (myX > 345)
    {
      myX=15;
      myY+= 1500;
    }
    for(int j= 0; i<8; i++)
  {
    mycards[j] = new cards(x[j], y[j], fv[j]);
  }
}
  
  for(int i= 0; i<8; i++)
  {
    mycards[i] = new cards(x[i], y[i], fv[i]);
  }
}
  void draw()
  {

  for(int i=0;i<8;i++)
  { 
    mycards[i].display();
  }
  if (mousePressed)
  {
    flipme();
  }
}

  



 
void flipme()
{
  for(int i =0;i<8;i++)
  {
    if(mouseX>x[i] && mouseX<(x[i]+105) && mouseY > y[i])
    {
      mycards[i].displayFront();
    }
  }
}



  
  
  
  
  
   
