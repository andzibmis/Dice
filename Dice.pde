void setup () {
  size (500, 500);
  noLoop ();
}

void draw () {
	background (0);
	int sum = 0;
	for (int y = 50; y < 400; y = y + 60) {
        for (int x = 70; x < 420; x = x + 60) {
        	Die first = new Die (x, y);
		    first.show ();
		    sum = sum + first.dvalue;
        }
	}
	textSize (30);
	textAlign (CENTER, CENTER);
	text ("THE DICE VALUE IS " + sum, 250, 450);
}

void mousePressed () {
  redraw ();
}

class Die {
	int mySize, myX, myY;
	int dvalue;
	Die (int x, int y) {
		mySize = 50;
		myX = x;
		myY = y;
		dvalue = (int) (Math.random () * 6 + 1);
	}
	void roll () {
		redraw ();
	}
	void show () {
		strokeWeight (3);
		stroke (255);
		fill (255);
		if (dvalue == 1) {
            ellipse (myX + 25, myY + 25, 10, 10);
		}
		if (dvalue == 2) {
			ellipse (myX + 17, myY + 17, 7, 7);
			ellipse (myX + 33, myY + 33, 7, 7);
		}
		if (dvalue == 3) {
			ellipse (myX + 15, myY + 15, 7, 7);
			ellipse (myX + 25, myY + 25, 7, 7);
			ellipse (myX + 35, myY + 35, 7, 7);
		}
		if (dvalue == 4) {
			ellipse (myX + 15, myY + 15, 7, 7);
			ellipse (myX + 35, myY + 35, 7, 7);
			ellipse (myX + 15, myY + 35, 7, 7);
			ellipse (myX + 35, myY + 15, 7, 7);
		}
		if (dvalue == 5) {
			ellipse (myX + 12, myY + 12, 7, 7);
			ellipse (myX + 38, myY + 12, 7, 7);
			ellipse (myX + 25, myY + 25, 7, 7);
			ellipse (myX + 12, myY + 38, 7, 7);
			ellipse (myX + 38, myY + 38, 7, 7);
		}
		if (dvalue == 6) {
            ellipse (myX + 17, myY + 12, 7, 7);
            ellipse (myX + 17, myY + 25, 7, 7);
            ellipse (myX + 17, myY + 38, 7, 7);
            ellipse (myX + 33, myY + 12, 7, 7);
            ellipse (myX + 33, myY + 25, 7, 7);
            ellipse (myX + 33, myY + 38, 7, 7);
		}
		noFill ();
	    rect (myX, myY, mySize, mySize, 20);
	}
}