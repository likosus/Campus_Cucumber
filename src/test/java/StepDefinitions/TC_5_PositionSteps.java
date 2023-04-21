package StepDefinitions;

import io.cucumber.java.en.And;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_5_PositionSteps {
    @And("click the edit buttonPositions")
    public void clickTheEditButtonPositions() throws AWTException {

        Robot rbt= new Robot();

        for (int i = 0; i < 8 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }

}
