PImage img;

Cards[] cards = new Cards[8];
int[] x = new int[8];
int[] y = new int[8];
int[] fv = new int[8]; 
int[] checkfv=new int [2];
int[] cardUp=new int[2];
boolean[] clicked=new boolean[8];
PImage flip;
PFont myFont;
int flipped=0;
int win=0;



void setup(){
 
  int myX = 27;
  int myY = 27;
  int myFv = 0;
  int count =1;
  size(900,600);
  myFont = createFont("Verdana",40,true);
  flip = loadImage("n.png");
  img= loadImage("Fairy_Tail_Banner (1).png");            
  img.resize(900,600);       
  
  for(int i=0; i < 8;i++)
  { 
    clicked[i]=false;
    y[i]= myX;
    x[i]= myY;
    fv[i]=count;
    count+=1;
    if(count ==5)
    {
      count=1;
    }
    if(myX<200)
    {
      myX+=300;
    } else if (myX >200)
    {
      myX =27;
      myY+=225;
    }
  }
  shuffle();
  
  for(int i=0;i<8;i++)
  {
    cards[i] = new Cards(x[i],y[i],fv[i]);
  }
}
void draw(){
  textFont(myFont);
  fill(0);
  image(img,0,0);
  for( int i=0;i<8;i++)
  {
    cards[i].display();
  }
  image(flip,425,270);
  flip.resize(50,50);
  
  if (mousePressed)
  
    //flipme();
    if(mouseX>400&&mouseX<450&&mouseY>270&&mouseY<330)
    {
      for(int i = 0;i <8;i++)
      {
        cards[i].faceDown();
        clicked[i]=false;
        flipped=0;
      }
    }
    
    
  if(win ==4)
  {
    fill(255);
    text("You Win!!",385,200);
  }
}
     
    
      


void mouseClicked()
{
  for(int i=0;i<8;i++)
  {
    if(mouseX>x[i]&&mouseX<(x[i]+175)&& mouseY > y[i]&&mouseY<y[i]+250&&(clicked[i]==false))
    {
      cards[i].displayFront();
      clicked[i]=true;
      cardUp[flipped]=i;
      
      flipped++;
      
      if(flipped==2)
      {
        flipped=0;
        
        if (fv[cardUp[0]]==fv[cardUp[1]])
        {
          cards[cardUp[0]].matched();
          cards[cardUp[1]].matched();
          win+=1;
        }
      }    
    }
  }
}

void shuffle()
{
  int temp=0;
  int rand=0;
  for(int i=0;i<8;i++)
  {
    rand=int(random(0,8));
    temp=fv[i];
    fv[i]=fv[rand];
    fv[rand]=temp;
  }
}

  
