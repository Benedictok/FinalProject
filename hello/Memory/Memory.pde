Cards [] myCard = new Cards[3];
int [] x = new int[3];
int [] y = new int[3];
int [] fv = new int [3]; 



void setup() 
{
  int myX = 15;
  int myY = 15;
  int myFv =0;
  size(700,600);
  
  //filling our arrays 
  for(int i =0; i<3;i++)
  {
    y[i] = myY;
    x[i] = myX;
    fv[i]= i + 1;
    if(myX<345)
    {
      myX +=200;
    }  else if (myX > 345)
    {
      myX=15;
      myY+= 270;
    }
  }
   for(int i= 0; i<3; i++){
     myCard[i] = new Cards(x[i], y[i], fv[i]);
   }
  }

  
 
  
void draw()
{
  for(int i=0;i<3;i++)
  { 
    myCard[i].display();
  }
  if (mousePressed)
  {
    flipme();
  }
}

  

void flipme()
{
  for(int i =0;i<3;i++)
  {
    if(mouseX > x[i] && mouseX<(x[i]+200) && mouseY > y[i])
  
    {
      myCard[i].displayFront();
    }
  }
}

/*void shuffle()
{
  int temp = 0;
  int rand = 0;
  for(int i =0; i<3;i++)
  {
    rand = int(random(0,6));
    temp = fv[i];
    fv[i] = fv[rand];
    fv[rand]=temp;
  }
}
*/
