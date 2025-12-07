import ch.bildspur.vision.*;
import ch.bildspur.vision.result.*;
import ch.bildspur.vision.dependency.*;

import java.nio.file.Paths;
import java.nio.file.Path;

DeepVision vision;
StableDiffusionNetwork network;

String url = "model.onnx";

void modelSetup() {
  vision = new DeepVision(this);
  
  url = sketchPath(new File("data", url).getPath());
  
  println("Loading model from " + url);
  Path model = Paths.get(url).toAbsolutePath();
  network = new StableDiffusionNetwork(model);
  network.setup();
}

PImage modelInference(PImage img) { 
  println("Inferencing...");
  ImageResult result = network.run(img);
  PImage returnImg = result.getImage();
  println("...done!"); 
  
  return returnImg;
}
