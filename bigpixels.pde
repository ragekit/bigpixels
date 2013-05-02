import processing.video.*;



XML child;
Movie myMovie;
void setup()
{
  
  xml = loadXML("config.xml");
  
  XML child = xml.getChild("size");
  XML video = xml.getChild("video");
  
  size(child.getInt("width"), child.getInt("height"),P3D);

  
  myMovie = new Movie(this, video.getString("path"));
  myMovie.loop();
}

public void init() { 
  frame.removeNotify(); 
  frame.setUndecorated(true); 
  frame.addNotify(); 
  super.init();
}

void draw() {
  background(0);
  frame.setLocation(0, 0);
  image(myMovie, 0, 0,);
}

void movieEvent(Movie m) {
  m.read();
}

boolean sketchFullScreen() {
  return false;
}

