import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import javax.imageio.*;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.LineUnavailableException;
import javax.sound.sampled.UnsupportedAudioFileException;

import java.io.*;
import java.awt.image.*;

public class ProjTest
{
static File file;
static AudioInputStream stream;
static Clip music;

public static void main(String...args)
{/*
file = new File("ProjTest_beginning.wav");
try {
stream = AudioSystem.getAudioInputStream(file);
} catch (UnsupportedAudioFileException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
try {
music = AudioSystem.getClip();
} catch (LineUnavailableException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
try {
music.open(stream);
} catch (LineUnavailableException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
music.start(); //Start the music
music.loop(Clip.LOOP_CONTINUOUSLY); //Loop the music
*/
JFrame j = new JFrame();  //JFrame is the window; window is a depricated class
MyPanelProjTest m = new MyPanelProjTest();
j.setSize(m.getSize());
j.add(m); //adds the panel to the frame so that the picture will be drawn
     //use setContentPane() sometimes works better then just add b/c of greater efficiency.

j.setVisible(true); //allows the frame to be shown.

j.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //makes the dialog box exit when you click the "x" button.
}

}

class MyPanelProjTest extends JPanel implements ActionListener, MouseListener, KeyListener
{

private Timer time;
private int x,y;
private String dir;
private int add;
Image img;

MyPanelProjTest()
{
time = new Timer(50, this); //sets delay to 15 millis and calls the actionPerformed of this class.
setSize(2000, 1500);
setVisible(true); //it's like calling the repaint method.
time.start();
add=1;
x=y=500;
dir = "R";
try {
File f = new File("caterpillar.jpg");
img = ImageIO.read(f);
} catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

// Add the MouseListener
 addMouseListener(this);

// Add the KeyListener
 addKeyListener(this);
          this.setFocusable(true);
          this.requestFocusInWindow();
}

public void paintComponent(Graphics g)
{
//Background
g.setColor(Color.BLACK);
g.fillRect(0,0,2000,1500);
g.setColor(Color.WHITE);
g.drawRect(200,200,800,800);
//draw(g,225,200,225,25);
for(int i = 200; i<1000;i+=25)
{
g.drawLine(200,i,1000,i);
g.drawLine(i,200,i,1000);
}

g.setColor(Color.GRAY);
g.fillRect(200,200,25,800);
g.fillRect(976,200,25,800);
g.fillRect(201,200,800,25);
g.fillRect(201,976,800,25);
//Call
drawSnake(g,x,y);
}

public void drawSnake(Graphics g, int x, int y)
{
// name
g.setColor(Color.WHITE);
g.setFont(new Font ("Arial", Font.BOLD, 50));
g.drawString("SNAKE GAME", 475 ,120);



g.setColor(Color.YELLOW);
// Snake
if(dir.equals("R"))
{
g.fillRect(x,300+y,25,25);
g.fillRect(x+25,300+y,25,25);
g.fillRect(x+50,300+y,25,25);
g.fillRect(x+75,300+y,25,25);
g.fillRect(x+100,300+y,25,25);
}
else if (dir.equals("D"))
{
g.fillRect(x,300+y,25,25);
g.fillRect(x,300+25+y,25,25);
g.fillRect(x,300+50+y,25,25);
g.fillRect(x,300+75+y,25,25);
g.fillRect(x,300+100+y,25,25);
}
else if (dir.equals("U"))
{
g.fillRect(x,300+y,25,25);
g.fillRect(x,300+25+y,25,25);
g.fillRect(x,300+50+y,25,25);
g.fillRect(x,300+75+y,25,25);
g.fillRect(x,300+100+y,25,25);
}
else if (dir.equals("L"))
{
g.fillRect(x,300+y,25,25);
g.fillRect(x+25,300+y,25,25);
g.fillRect(x+50,300+y,25,25);
g.fillRect(x+75,300+y,25,25);
g.fillRect(x+100,300+y,25,25);
}
// name
g.setFont(new Font ("Arial", Font.BOLD, 20));
g.drawString("x="+x+  "y="+y, 20 ,20);
g.drawString("Direction="+ dir, 150 ,20);

g.setColor(Color.BLACK);

//draw imported image
// g.drawImage(img, imageX, imageY, this);
}
public void drawFood(Graphics g, int x , int y)
{
//ProjTest
g.setColor(Color.YELLOW);

g.fillRect((int)((Math.random()*(975-225)+1)+225),(int)((Math.random()*(975-225)+1)+225),25,25);
}

public void actionPerformed(ActionEvent e)
{
if(dir.equals("R") && x<=825 && y<=975 && x>= 175 && y>=-50)
x+=25;
else if (dir.equals("D") && x<=800 && y<=525 && x>= 175 && y>=-50)
y+=25;
else if(dir.equals("U") && x<=800 && y<=975 && x>= 175 && y>=-50)
y-=25;
else if(dir.equals("L") && x<=800 && y<=975 && x>= 250 && y>=-50)
x-=25;
repaint();
}

public void mouseClicked (MouseEvent me) {
// imageX = me.getX();
}

public void mouseEntered (MouseEvent me) {}
public void mousePressed (MouseEvent me) {}
public void mouseReleased (MouseEvent me) {}
public void mouseExited (MouseEvent me) {}

    public void keyPressed(KeyEvent e) {
    if(e.getKeyCode() == KeyEvent.VK_UP){
        dir="U";
        }
        if(e.getKeyCode() == KeyEvent.VK_DOWN){
        dir="D";
        }
        if(e.getKeyCode() == KeyEvent.VK_LEFT){
        dir="L";
        }
        if(e.getKeyCode() == KeyEvent.VK_RIGHT){
        dir="R";
        }
    }

    public void keyTyped(KeyEvent e)
    {

    }

    public void keyReleased(KeyEvent e) {}

}

