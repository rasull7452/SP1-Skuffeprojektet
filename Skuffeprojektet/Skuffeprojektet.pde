// TODO:
// En eller anden loop for at få alle lande til at være der
// Gruppe tekst til hver gruppe (til sidst)
// Tror højre side skal være mørkere end venstre side
// Find bedre font til lande navn tekst
// Lav arrays til hver gruppe 
// Lav group class (FÆRDIG)

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

// 23. september / 24. september kl. 1
// Fik lavet group class
// Ændret country class så at den virker med group class
// Flyttet group rektangel ved højre side af bracket farverne til globale scope i main sketch tab
// Lavet string arrays til hver gruppe som nok skal ændres eller erstattes
// Tilføjet fejl besked hvis man vælger et gruppe navn som ikke er A, B, C eller D
// Fjernet unødvendig gruppe farve parameter fra group class siden der allerede er en if statement i country som tjekker gruppe navn og vælger en farve som passer den

String[] groupA = {"Russia", "Saudi Arabia", "Egypt", "Uruguay"};
String[] groupB = {"Portugal", "Spain", "Morocco", "Iran"};
String[] groupC = {"France", "Australia", "Peru", "Denmark"};
String[] groupD = {"Argentina", "Iceland", "Croatia", "Nigeria"};

int groupABracketX = 0;
int groupABracketY = 32;

int groupBBracketX;
int groupBBracketY;

int groupCBracketX;
int groupCBracketY;

int groupDBracketX;
int groupDBracketY;

color groupACColor = color(99, 215, 250);
color groupBDColor = color(255, 255, 85);


void setup(){
  
  Group A = new Group("Group B", groupABracketX, groupABracketY);
  Country russia = new Country(A, "Russia");
  Country saudiArabia = new Country(A, "Saudi Arabia");
  Country egypt = new Country(A, "Egypt");
  Country uruguay = new Country(A, "Uruguay");
  

  
  size(1240,534);
  background(#24334D);
  
  russia.display(groupABracketX, groupABracketY);
  saudiArabia.display(groupABracketX, groupABracketY + 55);
  egypt.display(groupABracketX, groupABracketY + 110);
  uruguay.display(groupABracketX, groupABracketY + 165);
  
  
  //c.display(groupABracketX, groupABracketY);
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
