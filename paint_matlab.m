import java.awt.Robot
import java.awt.event.*

robot = Robot();
robot.delay(500);
robot.keyPress(KeyEvent.VK_ALT);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_ALT);
robot.delay(500);
image = imread('filename');
image = imresize(image,0.5);
image = im2bw(image,0.5);

imshow(image);

start = [200 200];
robot.mouseMove(start(1),start(2));
for i=1:size(image,1)
    robot.mouseMove(start(1),start(2)+i);
    for j=1:size(image,2)
        robot.mouseMove(start(1)+j,start(2)+i);
        if image(i,j)==0
            robot.mousePress(InputEvent.BUTTON1_MASK);
            robot.delay(5);
        else
            robot.mouseRelease(InputEvent.BUTTON1_MASK);
            robot.delay(5);
        end
    end
    robot.mouseRelease(InputEvent.BUTTON1_MASK);
end
    
    