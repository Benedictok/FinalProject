PImage img;

Cards[] cards = new Cards[10];
int[] x = new int[10];
int[] y = new int[10];
int[] fv = new int[10]; 

void setup(){
  img = loadImage("Fairy_Tail_Banner (1).png");

  int myX = 9;
  int myY = 9;
  int myFv = 0;
  size(953,654);
  
  for(int i=0; i < 10;i++)
  { 
    y[i]= myX;
    x[i]= myY;
    fv[i]= i+1;
    if(myX<345)
    {
      myX

void draw(){
  image(img,0,0);
  
}
