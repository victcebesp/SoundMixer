import processing.sound.*;

boolean firstSquarePlaying, secondSquarePlaying, thirdSquarePlaying, fourthSquarePlaying;
Mixer mixer;
SoundFile bassTrack, jungleTrack, voiceTrack, clapTrack;
Sound sound;

void setup() {
  size(300, 300);
  this.bassTrack = new SoundFile(this, "bass.wav");
  this.jungleTrack = new SoundFile(this, "jungle.wav");
  this.voiceTrack = new SoundFile(this, "clap.wav");
  this.clapTrack = new SoundFile(this, "voice.wav");
  this.mixer = new Mixer(this);
}

void draw() {
  
  
  background(255, 255, 255);
  
  showButtons(); //<>//
  updateVolume();
  showVolumeBar();
  this.mixer.play();
  //play();
}

void keyPressed() {
  if(key == '1') {
    mixer.toggle(0);
  } else if (key == '2') {
    mixer.toggle(1);
  } else if (key == '3') {
    mixer.toggle(2);
  } else if (key == '4') {
    mixer.toggle(3);
  }
}

void showButtons() {
  pushMatrix();
  translate(10, 10);
  
  pushStyle();
  if(mixer.firstButtonIsPressed()) fill(0, 0, 0);
  square(0, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.secondButtonIsPressed()) fill(0, 0, 0);
  square(100, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.thirdButtonIsPressed()) fill(0, 0, 0);
  square(0, 100, 100);
  popStyle();

  pushStyle();
  if(mixer.fourthButtonIsPressed()) fill(0, 0, 0);
  square(100, 100, 100);
  popStyle();
  
  popMatrix();
}

void updateVolume() {
  if(mouseInsideVolumeBar()) this.mixer.updateVolume(mouseX);
}


boolean mouseInsideVolumeBar() {
  return mouseX > 10 && mouseX < 290 && mouseY > 220 && mouseY < 290;
}

void showVolumeBar() {
  pushMatrix();
  translate(10, 220);
  rect(0, 0, 280, 70);
  popMatrix();
}
