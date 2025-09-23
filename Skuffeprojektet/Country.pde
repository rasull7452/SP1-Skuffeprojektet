//enum Group{GROUP_A, GROUP_B, GROUP_C, GROUP_D}

class Country{
  
  int bigBracketX;
  int bigBracketY;
  
  int flagSize = 90;
  
  int bigBracketWidth = 595;
  int bigBracketHeight = 46;
  
  color groupAC = color(99, 215, 250);
  color groupBD = color(255, 255, 85);
  
  int textDistanceY = 37;
  int textDistanceX = 110;
  
  int edgeRectWidth = 15;
  
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
    text(country.toUpperCase(), bigBracketX + textDistanceX, bigBracketY + textDistanceY);
    
    // tjek om det er gruppe a/c eller gruppe b/d
    if(group.name.equals("Group A") || group.name.equals("Group C")){
      
      fill(groupAC);
      
    }else if(group.name.equals("Group B") || group.name.equals("Group D")){
    
      fill(groupBD);
        
    }else{
      
      fill(128, 0, 128);
      println("Country: " + country + " is assigned to an invalid group!");
      
    }
    
    noStroke();
    
    // blå/gul rektangel ved enden af bracket
    rect(bigBracketX + bigBracketWidth, bigBracketY, edgeRectWidth, bigBracketHeight);
    
    // lav flaget til landet
    image(img, bigBracketX, bigBracketY, flagSize, bigBracketHeight);
      
  }
}
