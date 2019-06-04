class Cards
{
 PImage card;
 int show = 0;
 int cardsX=0;
 int cardsY=0;
 int faceValue=0;
 String [] cardName ={"image.png"};
 
 Cards(int x,int y, int fv)
 {
   cardsX = x;
   cardsY = y;
   faceValue = fv;
 }
 
 void display(){
   cardImage = load(cardName[show]);
   image(cardImage,cardsX,cardsY);
 }
 
 void diplayFront(){
   show = faceValue;
 }
 

}
   
