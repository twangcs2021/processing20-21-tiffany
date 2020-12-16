import processing.sound.*;

public class SoundBar {
  private int bands;
  private int[] rgb = {100, 100, 100};
  private float x;
  private float y;
  
  public SoundBar(int b) {
    x = width / 2;
    y = height / 2;
    bands = b;
  }
  
  public void display() {
    fft.analyze(spectrum);
    for(int i = 0; i < bands; i++){
      pushMatrix();
      translate(x, y);
      rotate(radians(i * 0.7 * 20));
      if (spectrum[i] * 1000 < 0.125) {
        stroke(255, 0, 0);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 255;
          rgb[1] = 0;
          rgb[2] = 0;
          
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 0.25) {
        stroke(206, 154, 255);
        
        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 206;
          rgb[1] = 154;
          rgb[2] = 255;
        
          //rgb[0] /= i;
          //rgb[1] /= i;
          //rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 0.5) {
        stroke(255, 255, 0);
        
        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 255;
          rgb[1] = 255;
          rgb[2] = 0;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 1) {
        stroke(101, 101, 153);
        
        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 101;
          rgb[1] = 101;
          rgb[2] = 153;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 2) {
        stroke(227, 251, 255);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 227;
          rgb[1] = 251;
          rgb[2] = 255;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 4) {
        stroke(172, 28, 2);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 172;
          rgb[1] = 28;
          rgb[2] = 2;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 8) {
        stroke(0, 204, 255);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 0;
          rgb[1] = 204;
          rgb[2] = 255;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 16) {
        stroke(255, 101, 1);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 255;
          rgb[1] = 101;
          rgb[2] = 1;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 32) {
        stroke(255, 0, 255);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 255;
          rgb[1] = 0;
          rgb[2] = 255;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 64) {
        stroke(51, 204, 51);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 51;
          rgb[1] = 204;
          rgb[2] = 51;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else if (spectrum[i] * 1000 < 128) {
        stroke(140, 138, 140);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 140;
          rgb[1] = 138;
          rgb[2] = 140;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      } else {
        stroke(0, 0, 254);

        
        //if (i > 1) {
        //  rgb[0] *= (i - 1);
        //  rgb[1] *= (i - 1);
        //  rgb[2] *= (i - 1);
          
          rgb[0] = 0;
          rgb[1] = 0;
          rgb[2] = 254;
        
        //  rgb[0] /= i;
        //  rgb[1] /= i;
        //  rgb[2] /= i;
        //}
      }
      line (0, 0, spectrum[i]*500, spectrum[i]*500);
      popMatrix();
    }
    
    fill(0);
    ellipseMode(CENTER);
    ellipse(x, y, 5, 5);
  }
  
  public int getR() {
    return rgb[0];
  }
  
  public int getG() {
    return rgb[1];
  }
  
  public int getB() {
    return rgb[2];
  }
}
