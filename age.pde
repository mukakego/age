void setup() {
  size(200, 800);
  PFont font = createFont("MS Gothic", 48, true);
  textFont(font);
  textAlign(LEFT, TOP);
  rectMode(CORNERS);
  int die = 80;
  float max = sqrt(die);
  float fuga = -100;
  for (int i = 0; i<=die; i++) {
    float hoge = map(sqrt(i), 0, max, 0, height);
    fill(i-1<=19?128:255);
    if (i>0)rect(0, fuga, width, hoge);

    fill(0);
    textSize(constrain(hoge-fuga, 0, 30));
    text(""+(i-1)+"歳", 0, fuga);
    fuga = hoge;
  }
}