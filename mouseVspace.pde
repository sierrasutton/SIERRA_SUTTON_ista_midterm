/* For this code I wanted to have circles and squares battle for control of the 
screen but the counters that I used did not let the program run correctly.
*/

Counter cntr;
Space spc;
int scr = 0;

void setup() {
  size(700, 400);
  cntr= new Counter();
  spc = new Space();
}

void draw() {
  background(255); 

  cntr.display();
  cntr.MousePressed();
  spc.display();
  spc.keyPressed();
}




class Counter {
//Originally for this class I wanted to "blow a bubble" or draw an ellipse for
//each time the counter increased, but with a delay on the counter the bubbles
//did not load correctly.  

  Counter() {
  }  

  void display() {
    noStroke();
    textAlign(CENTER);
    textSize(50);         
    fill(255, 0, 0);

    text ("Mouse Clicked "+begin(scr), 250, 100);
  }

  void MousePressed() {
    if (mousePressed == true) {
      scr++;
      delay(200);
    }
  }

  String begin(int a) {
    String Buffer;
    Buffer=nf(a, 1);
    return(Buffer);
  }
}



class Space {
//For this class, similarly to the last I wanted to draw a square each time the
//counter was increased but likewise it did not run correctly for whatever
//reason.  
  int start = 0;
  
  void keyPressed() {
    if (keyPressed == true) {
      start += 1;
      delay(200);
    }
  }
    
  void display() {
    noStroke();
    textAlign(CENTER);
    textSize(50);         
    fill(0, 255, 0);

    text ("Space Bar Clicked "+start, 250, 250);
  
  }   
   String begin(int a) {
    String Buffer;
    Buffer=nf(a, 1);
    return(Buffer);
  } 
}

