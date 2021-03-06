CA ca;
CAGrid caGrid;
int caGridRows = 5, caGridCols = 5;

void setup() {
  fullScreen();
  frameRate(25);
  background(0);
  
  caGrid = new CAGrid(caGridRows, caGridCols);
}

void draw() {
  caGrid.drawCAGrid();
}

void keyPressed() {
  final int k = keyCode;

  if (k == 'P') {
    if (looping)  noLoop();
    else          loop();
  }
  
  if (k == LEFT) {
    for (CA[] caRow : caGrid.cas) {
      for (CA ca : caRow) {
        ca.ruleNumber -= 2 * caGridRows * caGridCols;
        ca.resetCA();
      }
    }
  }
  
  if (k == RIGHT) {
    for (CA[] caRow : caGrid.cas) {
      for (CA ca : caRow) {
        ca.resetCA();
      }
    }
  }
}
