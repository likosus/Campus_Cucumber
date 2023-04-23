package StepDefinitions;

import io.cucumber.java.en.And;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_04_FieldsSteps {
    @And("click the edit fieldsButton")
    public void clickTheEditFieldsButton() throws AWTException {


        Robot rbt= new Robot();

        for (int i = 0; i < 7 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }
}

