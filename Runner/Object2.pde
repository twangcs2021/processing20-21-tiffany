 // An object that wraps the PShape

class Ring {
  private PShape s;
  private float x;
  private float y;
  private int timeCreated;
  ArrayList<PVector> original;
  
  Ring (int t) {
    timeCreated = t;
    x = width / 2;
    y = height / 2; 

    original = new ArrayList<PVector>();
    for (float a = 0; a < TWO_PI; a+=0.2) {
      PVector v = PVector.fromAngle(a);
      v.mult(50);
      original.add(v);
    }
    
    s = createShape();
    s.beginShape();
    s.noFill();
    s.stroke(255);
    s.strokeWeight(0.25);
    for (PVector v : original) {
      s.vertex(v.x, v.y);
    }
    s.endShape(CLOSE);
  }
  
  int getTime() {
    return timeCreated;
  }
  
  float getWidth() {
    return s.width;
  }

  void wiggle() {
    float xoff = 0;
    float yoff = 0;
    float offset;
    for (int i = 0; i < s.getVertexCount(); i++) {
      offset = spectrum[i]*10000;
      PVector pos = original.get(i);
      float a = TWO_PI*offset;
      PVector r = PVector.fromAngle(a);
      r.mult(offset/100);
      r.add(pos);
      s.setVertex(i, r.x, r.y);
      xoff += offset;
      yoff += offset;
    }
  }
  
  void grow(int endWiggleTime) {
    while (endWiggleTime < audioLength) {
      translate(x, y);
      for (int i = 0; i < bands; i++) {
        rotate(radians(i*0.7*20));
      }
      scale(1.5);
      if (seconds % 10 == 0) {
        shape(s, 0, 0);
      }
      endWiggleTime += seconds;
    }
  }
  
  void setStroke(int r, int g, int b) {
    s.setStroke(color(r, g, b));
  }
  
  void resize(float newSize) {
    s.scale(newSize);
    s.width *= newSize;
    s.height *= newSize;
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    for (int i = 0; i < bands; i++) {
      rotate(radians(i * 0.7 * 20));
    }
    shape(s);
    popMatrix();
  }
}
