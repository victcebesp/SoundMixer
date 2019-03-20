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
  
}
