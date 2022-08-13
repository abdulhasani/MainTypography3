
class TypoGrafi {

  PFont font;
  int margin = 20;
  int gap = 50;
  int counter = 33;
  int y = 0;
  int x = 1;
  int radian = 0;
  int maxY= 0;
  int fontSize;
  String typeFont;
  String command = "DEFAULT_FONT_SIZE";

  TypoGrafi(String typeFont, int fontSize) {
    this.fontSize = fontSize;
    this.typeFont = typeFont;
  }

  void draw() {
    font = createFont(typeFont,fontSize);
    textFont(font);
    textAlign(CENTER, CENTER);    
    translate(margin*2, margin*2);
    char letter = char(counter);  
    text(letter, x, y);
    counter++;

    x += gap;
    if (x > (width/8)  && x < (width/2)-600) {
      y += 25;
      maxY= y-25;
    }

    if (x > 600) {
      y -=30;
    }

    /*
  Pindah Baris
     */
    if (x > width) {
      x = 0;
      y = maxY;
      if (command.equalsIgnoreCase("DEFAULT_FONT_SIZE")) {
        command = "CHANGE_FONT_SIZE";
      }else{
        command = "DEFAULT_FONT_SIZE";
      }
    }

    /*
  Reset Kanvas
     */
    if (y > height) {
      background(0);
      y=0;
    }

    if (counter > 500) {
      counter = 0;
    }
  }

  void setFontSize(int size) {
    fontSize = size;
  }
}
