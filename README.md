# FinalProject
# Project Title and purpose = Memory Card Game and the purpose is to inhance your memory


One Paragraph of project description goes here
I decide to make a memory card game for my project. It is a simple game and not that challenges but it's a good game to help you inhance your memory. So basically what you do in this game is to match the card with its similar card and it will dissapear. If it doesn't match, just press the flip icon to bring it back face down. If you finish matching all the cards you win. 

### Difficulties or opportunities you encountered along the way.

The toughest part of my project was making the funtion that make the card disappear if they match. That was quite challenging to do because they would have to have the same location to match so i have to create an if statement. 

### Most interesting piece of your code and explanation for what it does.

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


This is the code taht shuffle the cards each time you start a new game. It rearange the order of the card in random in the array each time you start a new game. 

## Built with

* [Processing](https://processing.org/) - The IDE used

## Authors



## Acknowledgments

* Thx to the youtube tutorials by Daniel Shiffman

