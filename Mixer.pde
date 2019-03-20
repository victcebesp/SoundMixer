import java.util.List;

public class Mixer {
  
  private List<MixerButton> buttons;
  private Sound sound;
  
  public Mixer(soundMixer soundMixer) {
    this.buttons = createAllButtons();
    this.sound = new Sound(soundMixer);
  }
  
  public void play() {
    for(MixerButton button : this.buttons) {
      button.play();
    }
  }
  
  public void toggle(int buttonIndex) {
    buttons.get(buttonIndex).toggle();
  }
 
  private List<MixerButton> createAllButtons() {
    List<MixerButton> buttons  = new ArrayList();
    buttons.add(new MixerButton(bassTrack, 0));
    buttons.add(new MixerButton(jungleTrack, 1));
    buttons.add(new MixerButton(voiceTrack, 2));
    buttons.add(new MixerButton(clapTrack, 3));
    return buttons;
  }
  
  public void showMixerButtons() {
    for(MixerButton button : this.buttons) {
      button.show();
    }
  }
  
  public boolean firstButtonIsPressed() {
    return this.buttons.get(0).isPressed();
  }
  
  public boolean secondButtonIsPressed() {
    return this.buttons.get(1).isPressed();
  }
  
  public boolean thirdButtonIsPressed() {
    return this.buttons.get(2).isPressed();
  }
  
  public boolean fourthButtonIsPressed() {
    return this.buttons.get(3).isPressed();
  }
  
  public void updateVolume(int xCoordinate) {
    this.sound.volume(map(xCoordinate, 10, 290, 0, 1));
  }
  
}
