class Country {

  int bigBracketX;
  int bigBracketY;

  int flagSize = 90;

  int bigBracketWidth = 587;
  int bigBracketHeight = 46;

  color groupColorAC = color(99, 215, 250);
  color groupColorBD = color(255, 255, 85);

  int textDistanceY = 37;
  int textDistanceX = 110;

  int edgeRectWidth = 15;

  Group group;

  PFont soleSansMedium;

  String country;


  Country(Group group, String country) {

    this.group = group;
    this.country = country;
  }

  void display() {

    soleSansMedium = createFont("sole-sans-medium.ttf", 40);
    PImage img = loadImage(country + ".png");

    // lav den store bracket
    fill(255);
    noStroke();
    rect(group.groupX, group.groupY, bigBracketWidth, bigBracketHeight);

    // skriv landets navn
    fill(#132338);
    textFont(soleSansMedium);
    text(country.toUpperCase(), group.groupX + textDistanceX, group.groupY + textDistanceY);

    // tjek om det er gruppe a/c eller gruppe b/d eller en hel anden gruppe
    if (group.name.equals("Group A") || group.name.equals("Group C")) {

      fill(groupColorAC);
    } else if (group.name.equals("Group B") || group.name.equals("Group D")) {

      fill(groupColorBD);
    } else {

      fill(128, 0, 128);
      println("Country: " + country + " is assigned to an invalid group!");
    }

    noStroke();

    // blå/gul rektangel ved enden af bracket
    rect(group.groupX + bigBracketWidth, group.groupY, edgeRectWidth, bigBracketHeight);

    // lav flaget til landet
    image(img, group.groupX, group.groupY, flagSize, bigBracketHeight);
  }
}
