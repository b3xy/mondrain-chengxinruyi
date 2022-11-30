
int bgWidth = 500;
int bgHeight = 500;
float lineSize = 0;
float colSize = 0;
color[] colors = {#ffffff, #ff0000, #ffff00, #0000ff, #000000};
void mondrianStyle() {
  for (int line = 0; line < bgHeight; line += lineSize + 3) {
    lineSize = random(5, bgWidth/3);
    for (int col = 0; col < bgWidth; col += colSize + 3) {
      colSize = random(5, bgHeight/2); 
      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);     
      strokeWeight(3);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, bgWidth, y);
      line(x, line, x, y);  
    }}}
      void setup() {
        size(500, 500);
        background(#ffffff);
        mondrianStyle();   //First run}
        }
        void draw() {
          if (mousePressed) {
            mondrianStyle();
            save("mondarian.tif");
          }
}
