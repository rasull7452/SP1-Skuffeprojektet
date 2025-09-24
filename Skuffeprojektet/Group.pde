class Group{
  
  String name;
  
  int groupX;
  int groupY;
  
  color groupAC = color(99, 215, 250);
  color groupBD = color(255, 255, 85);
  
  PFont dinBold;
  
  Group(String name, int groupX, int groupY){
    
    this.name = name;
    this.groupX = groupX;
    this.groupY = groupY;
    
   //text(name, group.groupX + textDistanceX, group.groupY + textDistanceY);
  
  }
  
  void display(int txtDistanceX, int txtDistanceY){
    
    dinBold = createFont("sole-sans-bold.ttf", 30);
    
    if(name.equals("Group A") || name.equals("Group C")){
      
      fill(groupAC);
      
    }else if(name.equals("Group B") || name.equals("Group D")){
    
      fill(groupBD);
        
    }else{
      
      fill(128, 0, 128);
      println("Group: " + name + " is an invalid group!");
      
    }
    
    textFont(dinBold);
    text(name.toUpperCase(), groupX + txtDistanceX, groupY + txtDistanceY);
  
  
  }
}
