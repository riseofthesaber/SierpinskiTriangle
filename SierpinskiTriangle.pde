boolean mor = false;
boolean les = false;
int piece = 500;
public void setup()
{
size(500,500);
}
public void draw()
{
			background(0);
	if (mor==true) {
		piece+=10;
	}
	if (les==true) {
		piece-=10;
	}
sierpinski(0,0,piece); 
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=10){
		triangle(x,y,x+len,y,x+(len/2),y+len);
	}else{
		sierpinski(x, y, (len/2));
		sierpinski(x+(len/2), y, (len/2));
		sierpinski(x+(len/4), y+(len/2), (len/2));
	}

}
public void keyPressed(){

	if(key=='a'){
		mor = true;
	}
	if(key=='s'){
		les = true;
	}
}
public void keyReleased(){
	if(key=='a'){
		mor = false;
	}
	if(key=='s'){
		les = false;
	}
}
