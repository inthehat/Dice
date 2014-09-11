Die one;
Die two;
Die three;
Die four;
void setup()
{
    size(500,500);
    noLoop();
}
void draw()
{
    background(0);
    one = new Die(100,100);
    two = new Die(300,300);
    three = new Die(100,300);
    four = new Die(300,100);
    one.show();
    two.show();
    three.show();
    four.show();
    one.roll();
    two.roll();
    three.roll();
    four.roll();    fill(255,0,0);
    textAlign(CENTER);
    text("Total Dots = "+ (one.num+two.num+three.num+four.num),250,250);
}
void mousePressed()
{
    redraw();
}
class Die 
{
    int num, myX, myY;
    Die(int x, int y)
    {
        num = (int)(Math.random()*6+1);
        myX = x;
        myY = y;
    }
    void roll()
    {
        if(num == 1)
        {
            fill(0);
            ellipse(myX+50,myY+50,10,10);
        }
        if(num == 2)
        {
            fill(0);
            ellipse(myX+80,myY+20,10,10);
            ellipse(myX+20,myY+80,10,10);
        }
        if(num == 3)
        {
            fill(0);
            ellipse(myX+80,myY+20,10,10);
            ellipse(myX+20,myY+80,10,10);
            ellipse(myX+50,myY+50,10,10);
        }
        if(num == 4)
        {
            fill(0);
            ellipse(myX+80,myY+20,10,10);
            ellipse(myX+80,myY+80,10,10);
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+20,myY+80,10,10);
        }
        if(num == 5)
        {
            fill(0);
            ellipse(myX+80,myY+20,10,10);
            ellipse(myX+80,myY+80,10,10);
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+20,myY+80,10,10);
            ellipse(myX+50,myY+50,10,10);
        }
        if(num == 6)
        {
            fill(0);
            ellipse(myX+80,myY+20,10,10);
            ellipse(myX+80,myY+80,10,10);
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+20,myY+80,10,10);
            ellipse(myX+20,myY+50,10,10);
            ellipse(myX+80,myY+50,10,10);
        }
    }
    void show()
    {
        fill(255);
        rect(myX,myY,100,100);
    }
}
