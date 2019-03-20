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
  
  
  background(60, 60, 60);
  stroke(60, 60, 60);
  
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
  translate(50, 10);
  
  pushStyle();
  if(mixer.firstButtonIsPressed()) fill(100, 255, 90);
  square(0, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.secondButtonIsPressed()) fill(255, 143, 65);
  square(100, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.thirdButtonIsPressed()) fill(55, 26, 178);
  square(0, 100, 100);
  popStyle();

  pushStyle();
  if(mixer.fourthButtonIsPressed()) fill(178, 47, 33);
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
