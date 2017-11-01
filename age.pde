void setup() {
  size(200, 800);
  PFont font = createFont("MS Gothic", 48, true);
  textFont(font);
  textAlign(LEFT, TOP);
  rectMode(CORNERS);
  int die = 80;
  float max = sqrt(die);
  float year_starts = 0;
  for (int i = 0; i<die; i++) {
    float year_ends = map(sqrt(i+1), 0, max, 0, height);
    fill(i<=19?128:255);
    rect(0, year_starts, width, year_ends);

    fill(0);
    textSize(constrain(year_ends-year_starts, 0, 30));
    text(""+i+"歳", 0, year_starts);
    year_starts = year_ends;
  }
}