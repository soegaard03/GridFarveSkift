int boxY, boxX;
int boxsize = 40;
void setup() {
  size(400, 400);
  noStroke();
  float x = 0;
  while (x < width) { //fortæller at mens x er mindre end bredden skal denne her komando laves, vi vil ikke have at den skal lave flere kasser end hvad der kan være i vinduet 
    float y = 0;
    while (y < height) { //her beder vi om det samme som før, det er bare med højden i stedet
      fill(random(150, 200));
      rect(x-1, y-1, boxsize-2, boxsize-2); //en rektangel
      y = y + boxsize; //her fortæller vi den at den skal sætte 40 til y, det gør at kassen bliver lavet et nyt sted så den ikke ligger oven i den gamle
    }
    x = x + boxsize; //her gør vi det samme men med x
  }  
}
void draw() {
  if (mousePressed) {
    fill (255, 230, 247);
     boxX = floor(mouseX/boxsize)*boxsize; //vi skal have en ny kasse med den farve jeg vil bruge til at komme ovenpå de eksisterende kasser, her fortæller vi dens x position, floor gør sådan at den runder ned istedet for op
  boxY = floor(mouseY/boxsize)*boxsize; //her angiver vi en y position for boxen
  square(boxX -1, boxY -1, boxsize -2); // boxen
  } 
}
void mouseReleased(){
      fill (random(150, 200));
     boxX = floor(mouseX/boxsize)*boxsize; // Her gør jeg det samme som før, jeg placere en ny box oven på den anden, denne her gang går den så tilbage til en grånueance 
  boxY = floor(mouseY/boxsize)*boxsize; //her angiver vi en y position for boxen
  square(boxX -1, boxY -1, boxsize -2); // boxen
  }
