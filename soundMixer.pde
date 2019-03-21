import processing.sound.*;

boolean firstSquarePlaying, secondSquarePlaying, thirdSquarePlaying, fourthSquarePlaying;
Mixer mixer;
SoundFile bassTrack, jungleTrack, voiceTrack, clapTrack;
Sound sound;
int volume;

void setup() {
  size(300, 300);
  this.bassTrack = new SoundFile(this, "bass.wav");
  this.jungleTrack = new SoundFile(this, "jungle.wav");
  this.voiceTrack = new SoundFile(this, "clap.wav");
  this.clapTrack = new SoundFile(this, "voice.wav");
  this.mixer = new Mixer(this);
  volume = 30;
  this.mixer.updateVolume(volume);
}

void draw() {
  
  
  background(60, 60, 60);
  stroke(60, 60, 60);
  
  showButtons(); //<>//
  updateVolume();
  showVolumeBar();
  showButtonsInstructions();
  this.mixer.play();
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
  if(mixer.firstButtonIsPressed()) fill(255, 248, 142);
  square(0, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.secondButtonIsPressed()) fill(190, 255, 164);
  square(100, 0, 100);
  popStyle();
  
  pushStyle();
  if(mixer.thirdButtonIsPressed()) fill(165, 255, 249);
  square(0, 100, 100);
  popStyle();

  pushStyle();
  if(mixer.fourthButtonIsPressed()) fill(171, 199, 255);
  square(100, 100, 100);
  popStyle();
  
  popMatrix();
}

void updateVolume() {
  if(mouseInsideVolumeBar()) {
    this.mixer.updateVolume(mouseX);
    volume = mouseX - 10;
  }
}


boolean mouseInsideVolumeBar() {
  return mouseX > 10 && mouseX < 290 && mouseY > 220 && mouseY < 290;
}

void showVolumeBar() {
  pushMatrix();
  translate(10, 220);
  pushStyle();
  fill(60, 60, 60);
  stroke(255, 255, 255);
  rect(0, 0, 280, 70);  
  fill(255, 255, 255);
  text("Drag to change volume", 70, 40);
  rect(0, 0, volume, 70);
  popStyle();
  popMatrix();
}

void showButtonsInstructions() {
  pushStyle();
  fill(0, 0, 0);
  if(!mixer.firstButtonIsPressed()) text("Press 1", 80, 65);
  if(!mixer.secondButtonIsPressed()) text("Press 2", 180, 65);
  if(!mixer.thirdButtonIsPressed()) text("Press 3", 80, 165);
  if(!mixer.fourthButtonIsPressed()) text("Press 4", 180, 165);
  popStyle();
}
