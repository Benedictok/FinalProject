class Cards
{
 PImage card;
 int show = 0;
 int cardsX=0;
 int cardsY=0;

 int faceValue=0;
 String [] cardName ={"image.png","a.jpg","b.png","c.jpg","d.png","a.jpg","b.png","c.jpg","d.png"};
 
 Cards(int x,int y, int fv)
 {
   cardsX = x;
   cardsY = y;
   faceValue = fv;
 }
 
 void display(){
   card =loadImage(cardName[show]);
   card.resize(175,250);
   image(card,cardsX,cardsY);
 }
 
 void displayFront()
 {
   show = faceValue;
 }
 void faceDown()
 {
   show=0;
 }
 void matched()
 {
   cardsX = -150;
 }
}


 
