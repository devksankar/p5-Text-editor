String inputText = "";
String[] lines = new String[0];

void setup() {
  size(600, 400);
  background(255);
  textSize(16);
}

void draw() {
  background(255);
  fill(0);
  displayText();
}

void displayText() {
  for (int i = 0; i < lines.length; i++) {
    text(lines[i], 10, 30 + i * 20);
  }
  

  text(inputText, 10, 30 + lines.length * 20);
}

void keyPressed() {
  if (key == BACKSPACE) {
    if (inputText.length() > 0) {
      inputText = inputText.substring(0, inputText.length() - 1); 
    }
  } else if (key == ENTER) {
    lines = append(lines, inputText);
    inputText = ""; 
  } else if (key != SHIFT && key != CONTROL && key != ALT && key != TAB) {
    
    inputText += key; 
  }
}
