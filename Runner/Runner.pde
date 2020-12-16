import processing.sound.*;
private FFT fft;
private SoundFile in;
private int bands;
private float[] spectrum;
private SoundBar soundbar;
private Ring w;
private ArrayList<Ring> rings;
private int audioLength;
private int seconds;
private float displayWidth;

public void setup() {
  frameRate(18);
  size(700, 700);
  bands = 512;
  fft = new FFT(this, bands);
  in = new SoundFile(this, "Tiffany copy.mp3");
  in.play();
  fft.input(in);
  spectrum = new float[bands];
  soundbar = new SoundBar(bands); 
  rings = new ArrayList<Ring>();
  w = new Ring(seconds);
  w.resize(0.3);
  audioLength = (int) in.duration();
  for (int i = 0; i < audioLength / 10; i++) {
    rings.add(new Ring(i * 10));
  }
}

public void draw() {
  background(0);
  displayWidth = (width / 2) - 20;
  for (Ring ring : rings) {
    w = ring;
    w.display();
    seconds = millis() / 1000;
    if (seconds < w.getTime() + 10) {
      int r = soundbar.getR();
      int g = soundbar.getG();
      int b = soundbar.getB();
      w.setStroke(r, g, b);
      w.wiggle();
    }
    if (seconds < audioLength) {
      if (w.getWidth() < displayWidth) {
        if (seconds > w.getTime() + 10) {
          w.resize(1.001);
        }
      }
      displayWidth = w.getWidth() - 10;
    }
  }
  soundbar.display();
}
