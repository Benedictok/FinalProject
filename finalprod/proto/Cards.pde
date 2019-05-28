class cards{
  int show = 0; 
  int cardsX = 0;
  int cardsY = 0;
  int faceValue = 0;
  PImage img; 
  String [] cardName = {"image.png"};

  void makecards(int x,int y, int fv){
    cardsX = x;
    cardsY = y;
    faceValue = fv;
    
    
  }
  void display(){
    img =loadImage(cardName[show]);
    image (img,cardsX,cardsY);
  }
  
  void displayFront(){
    show = faceValue;
  }
     
    
  
}
    
    
  
  
    
