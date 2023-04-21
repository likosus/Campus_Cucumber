package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import Utilities.GWD;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_03_DocumentTypeSteps {
    DialogContent dc=new DialogContent();
    LeftNav ln=new LeftNav();
    @When("Click ESC and return main")

    public void clickESCAndReturnMain() {
        Actions esc=new Actions(GWD.getDriver());
        esc.keyDown(Keys.ESCAPE);
        esc.keyUp(Keys.ESCAPE);
        esc.build().perform();
    }

    @And("Click the editButton")
    public void clickTheEditButton() throws AWTException {
        Robot rbt= new Robot();

        for (int i = 0; i < 11 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }

}
