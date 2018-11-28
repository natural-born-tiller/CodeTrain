let ax, ay, bx, by, cx, cy, x, y;
let scale = 0.5; 
let str = 123;
function setup() {
	createCanvas(windowWidth,windowHeight);
	background(0);
	//dreieck
	ax = width/2; 
	ay = 10;
	bx = 10;
	by = height - 10;
	cx = width - 10;
	cy = height - 10;

	x = random(width);
	y = random(height);
	strokeWeight(5);
	stroke(51); 
	point(ax, ay);
	point(bx, by);
	point(cx, cy);
	strokeWeight(1);
	stroke(0);
	point(x, y);
}

function draw() {
	//dreieck
	for (let i = 0; i < 100; i++) {
		let r = floor(random(3));
		strokeWeight(1);
		if (r==0) {
			x = lerp(x, ax, scale);
			y = lerp(y, ay, scale);
			stroke(str);
			point(x, y);
		} else if (r==1) {
			x = lerp(x, bx, scale);
			y = lerp(y, by, scale);
			stroke(str);
			point(x, y);
		} else if (r==2) {
			x = lerp(x, cx, scale);
			y = lerp(y, cy, scale);
			stroke(str);
			point(x, y);
		}
	}
}