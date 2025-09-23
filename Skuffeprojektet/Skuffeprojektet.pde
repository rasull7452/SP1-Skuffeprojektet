// TODO:
// Skygge mellem flag og bracket
// En eller anden loop for at få alle lande til at være der
// Gruppe tekst til hver gruppe (til sidst)
// Tror højre side skal være mørkere end venstre side
// Find bedre font til lande navn tekst
// Lav arrays til hver gruppe
// Lav group class

// 1. september:
// Fik lavet group A og B store brackets

// 22. september:
// Fik lavet en klasse til landene
// Fik lavet en display metode med:
  // En stor hvid bracket, 
  // Rektangel ved enden med gul/blå farve
  // Et flag
  // Landets navn
// Tilføjede variable med datatype enum til at tjekke om landets gruppe er A, B, C eller D
// Lavet if statement for at tjekke om landets gruppe er A/C eller B/D og sæt en farve baseret på det


int groupABracketX = 0;
int groupABracketY = 32;

int groupBBracketX;
int groupBBracketY;

int groupCBracketX;
int groupCBracketY;

int groupDBracketX;
int groupDBracketY;


void setup(){
  Country c = new Country(Group.GROUP_A, "Russia");

  
  size(1240,534);
  background(#24334D);
  
  c.display(groupABracketX, groupABracketY);
  stroke(255);
  strokeWeight(4);
  line(width/2, 0, width/2, height);
  
  
  
  //// GROUP A
  //// RUSSIA (1)
  //rect(groupABracketX, groupABracketY, bigBracketWidth, bigBracketHeight);
  
  //// SAUDI ARABIA (2)
  //rect(groupABracketX, groupABracketY + 60, bigBracketWidth, bigBracketHeight);
  
  //// EGYPT (3)
  //rect(groupABracketX, groupABracketY + 120, bigBracketWidth, bigBracketHeight);
  
  //// URUGAY(4)
  //rect(groupABracketX, groupABracketY + 180, bigBracketWidth, bigBracketHeight);
  
  //// GROUP B
  //groupBBracketY = groupABracketY + 280;
  //// RUSSIA (1)
  //rect(groupABracketX, groupBBracketY, bigBracketWidth, bigBracketHeight);
  
  //// SAUDI ARABIA (2)
  //rect(groupABracketX, groupBBracketY + 60, bigBracketWidth, bigBracketHeight);
  
  //// EGYPT (3)
  //rect(groupABracketX, groupBBracketY + 120, bigBracketWidth, bigBracketHeight);
  
  //// URUGAY(4)
  //rect(groupABracketX, groupBBracketY + 180, bigBracketWidth, bigBracketHeight);
  
}

void draw(){


}
