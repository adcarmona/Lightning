int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int lightningstrokeblue = 50;
int lightningstrokegreen = 50;
int lightningstrokered = 50;
boolean lightning = true;

void setup()
{
	size(500,300);
	background(0);
	strokeWeight(2);
	frameRate(20);
}
void draw()
{
	if (lightning == true) {
	while (endX < 500)
	{
		stroke(lightningstrokered,lightningstrokegreen,lightningstrokeblue);
		endX = startX + int(random(0,10));
		endY = startY + int(random(-9,10));
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		lightningstrokeblue = lightningstrokeblue + 5;
		lightningstrokegreen = lightningstrokegreen + 5;
		lightningstrokered = lightningstrokered + 5;
	}
	}
	lightningstrokeblue = 10;
	lightningstrokegreen = 10;
	lightningstrokered = 10;
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
	fill(0,0,0,50);
	rect(0,0,500,300);
}
void mousePressed()
{
	if(lightning == true) {
		lightning = false;
	}
	else {
		lightning = true;
	}
}

