class Cards
{
 PImage card;
 int show = 0;
 int cardsX=0;
 int cardsY=0;

 int faceValue=0;
 String [] cardName ={"image.png","download.jpeg","Lucy_X792_image.png","hn.jpg","download (1).jpg","download (2).jpg","download (3).jpg","download (4).jpg","download (5).jpg"};
 
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
 
 void displayFront(){
   show = faceValue;
 }
 

}
