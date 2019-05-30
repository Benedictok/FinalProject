class Cards{
  PImage cardImage;
  int show = 0; 
  //int cardWidth = 105;
  //int cardHeight = 30;
  int cardsX = 0;
  int cardsY = 0;
  int faceValue = 0;
  String [] cardName = {"dog-1210559__340.jpg"};

  Cards(int x,int y, int fv)
  {
    cardsX = x;
    cardsY = y;
    faceValue = fv;
  }
    
 
  void display()
  {
    cardImage =loadImage(cardName[show]);
    image (cardImage,cardsX,cardsY);
  }
  
  void displayFront()
  {
    show = faceValue;
  }
     
    
  
}
    
    
  
  
    
