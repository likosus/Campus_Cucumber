package StepDefinitions;

import io.cucumber.java.en.And;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_06_Subject_Category {
    @And("click the edit buttonSebject")
    public void clickTheEditButtonSebject() throws AWTException {

        Robot rbt= new Robot();

        for (int i = 0; i < 7 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }
}
