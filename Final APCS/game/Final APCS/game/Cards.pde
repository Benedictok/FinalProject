class Cards
{
 PImage card;
 int show = 0;
 int cardsX=0;
 int cardsY=0;
 int faceValue=0;
 String [] cardName ={"image.png","download.jpeg",};
 
 Cards(int x,int y, int fv)
 {
   cardsX = x;
   cardsY = y;
   faceValue = fv;
 }
 
 void display(){
   card =loadImage(cardName[show]);
   image(card,cardsX,cardsY);
 }
 
 void displayFront(){
   show = faceValue;
 }
 

}
   
