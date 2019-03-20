import processing.sound.*;

public class MixerButton extends PApplet {
  
  private SoundFile track;
  private boolean isPressed;
  private int id;
  
  public MixerButton(SoundFile track, int id) {
    this.track = track;
    this.isPressed = false;
    this.id = id;
  }
  
  public void play() {
    thread("playTrack");
  }
  
  public void toggle() {
    this.isPressed = !this.isPressed;
  }
  
  public void playTrack() {
    if (isPressed) {
      if(!this.track.isPlaying()) this.track.play();
    } else {
      track.stop();
    }
    
  }
  
  public boolean isPressed() {
    return this.isPressed;
  }
  
  public void show() {
    //pushStyle();
    if(this.isPressed) {
      fill(0, 0, 0);
    }
    if(this.id == 0) {
      square(0, 0, 100);
    } else if(this.id == 1) {
      square(100, 0, 100);
    } else if(this.id == 2) {
      square(0, 100, 100);
    } else if(this.id == 3) {
      square(100, 100, 100);
    }
    //popStyle();
  }
  
}
