enum Group{GROUP_A, GROUP_B, GROUP_C, GROUP_D}

class Country{
  
  int bigBracketX;
  int bigBracketY;
  
  int bigBracketWidth = 595;
  int bigBracketHeight = 46;
  
  color groupAC = color(99, 215, 250);
  color groupBD = color(255, 255, 85);
  
  Group group;
  
  String country;
  
  
  Country(Group group, String country){
    
    this.group = group;
    this.country = country;
  
  }
  
  void display(int bigBracketX, int bigBracketY){
    
    this.bigBracketX = bigBracketX;
    this.bigBracketY = bigBracketY;
    
    PImage img = loadImage(country + ".png");
    
    // lav den store bracket
    fill(255);
    noStroke();
    rect(bigBracketX, bigBracketY, bigBracketWidth, bigBracketHeight);
    
    // skriv landets navn
    fill(0);
    textSize(40);
    text(country.toUpperCase(), bigBracketX + 110, bigBracketY * 2.1);
    
    // tjek om det er gruppe a/c eller gruppe b/d
    if(group == Group.GROUP_A || group == Group.GROUP_C){
      
      fill(groupAC);
      
    }else{
    
      fill(groupBD);
        
    }
    
    noStroke();
    
    // blå/gul rektangel ved enden af bracket
    rect(bigBracketX + bigBracketWidth, bigBracketY, 15, bigBracketHeight);
    
    // lav flaget til landet
    image(img, bigBracketX, bigBracketY, 90, bigBracketHeight);
  
  }
}
