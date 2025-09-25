// TODO:
// En eller anden loop for at få alle lande til at være der (FÆRDIG)
// Gruppe tekst til hver gruppe (til sidst) (FÆRDIG)
// Tror højre side skal være mørkere end venstre side
// Find bedre font til lande navn tekst (FÆRDIG)
// Lav arrays til hver gruppe (FÆRDIG)
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
// Lavet for loops
// Ændret lidt på width af brackets
// Lavet group objekt til hver gruppe
// Lavet country arrays til alle lande

// 24. september
// Lagt alle for loops i en loop
// Lavet fonts til tekst
// Lavet gruppe tekst til hver gruppe

// 25. september
// Lavet nogle værdier om til variabler

int groupBigBracketDist = 55;

int groupABracketX = 0;
int groupABracketY = 40;

int groupBBracketY = 310;

int groupCBracketX = 630;
int groupCBracketY = 40;

int groupDBracketY = 310;

int groupTxtDistX = 230;
int groupTxtDistY = -5;


void setup(){

  Group groupA = new Group("Group A", groupABracketX, groupABracketY);
  Country[] groupACountries = {
  new Country(groupA, "Russia"),
  new Country(groupA, "Saudi Arabia"),
  new Country(groupA, "Egypt"),
  new Country(groupA, "Uruguay"),
  };
  
  Group groupB = new Group("Group B", groupABracketX, groupBBracketY);
  Country[] groupBCountries = {
  new Country(groupB, "Portugal"),
  new Country(groupB, "Spain"),
  new Country(groupB, "Morocco"),
  new Country(groupB, "Iran"),
  };
  
  Group groupC = new Group("Group C", groupCBracketX, groupCBracketY);
  Country[] groupCCountries = {
  new Country(groupC, "France"),
  new Country(groupC, "Australia"),
  new Country(groupC, "Peru"),
  new Country(groupC, "Denmark"),
  };
  
  Group groupD = new Group("Group D", groupCBracketX, groupDBracketY);
  Country[] groupDCountries = {
  new Country(groupD, "Argentina"),
  new Country(groupD, "Iceland"),
  new Country(groupD, "Croatia"),
  new Country(groupD, "Nigeria"),
  };

  
  size(1240,534);
  background(#24334D);
  
  // Group texts
  groupA.display(groupTxtDistX, groupTxtDistY);
  groupB.display(groupTxtDistX, groupTxtDistY);
  groupC.display(groupTxtDistX, groupTxtDistY);
  groupD.display(groupTxtDistX, groupTxtDistY);
  
  // GROUPS 
  for(int i = 0; i < groupBCountries.length; i++){
    
    // GROUP A
    groupACountries[i].display();
    groupA.groupY += groupBigBracketDist;
    
    // GROUP B
    groupBCountries[i].display();
    groupB.groupY += groupBigBracketDist;
    
    // GROUP C
    groupCCountries[i].display();
    groupC.groupY += groupBigBracketDist;
    
    // GROUP D
    groupDCountries[i].display();
    groupD.groupY += groupBigBracketDist;
    
    
  }
  
  //c.display(groupABracketX, groupABracketY);
  stroke(255);
  strokeWeight(4);
  line(width/2, 0, width/2, height);
  
}
