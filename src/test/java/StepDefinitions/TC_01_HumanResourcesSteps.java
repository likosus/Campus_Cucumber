package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_01_HumanResourcesSteps {

    LeftNav ln=new LeftNav();
    DialogContent dc=new DialogContent();

    @Then("is no data message should be displayed")
    public void isNoDataMessageShouldBeDisplayed() {

        dc.verifyContainsTextFunction(dc.isNoData, "There is no data to display");
    }


    @And("Click the edit button")
    public void clickTheEditButton() throws AWTException {

        Robot rbt= new Robot();

        for (int i = 0; i < 5 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }
}
