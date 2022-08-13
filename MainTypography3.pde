
PFont font;
TypoGrafi typoGrafi;

/**
 Method setup
 Method ini akan dipanggil pertama kali project dirun, dipanggil hanya sekali.
 method ini berisi 
 1. perintah untuk setup awal screen / canvas
 2. default background black
 3. Mencetak daftar font yang ada di OS
 4. Membuat object font
 5. set font untuk text
 6. Mengatur posisi text
 */
void setup() {
  fullScreen();
  background(0);
  printArray(PFont.list());
  typoGrafi = new TypoGrafi("FreeSans", 35);
}

/*
Method Draw
 Method ini akan dipanggil setelah method setup, 
 semua logic dalam method ini akan dipanggil terus menerus
 method ini seperti halnya perulangan. 
 */
void draw() {

  typoGrafi.draw();
  
  if (typoGrafi.command.equalsIgnoreCase("CHANGE_FONT_SIZE")) {
    fill(255, 204, 0);
    typoGrafi.fontSize = 15;
  }else{
    fill(255);
    typoGrafi.fontSize = 35;
  }

}
