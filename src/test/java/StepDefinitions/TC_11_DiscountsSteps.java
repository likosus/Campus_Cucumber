package StepDefinitions;

import Pages.DialogContent;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.awt.*;
import java.awt.event.KeyEvent;

public class TC_11_DiscountsSteps {
    DialogContent dc=new DialogContent();

    @When("Click TAP and return main")
    public void clickTAPAndReturnMain() throws AWTException {
        Robot robot= new Robot();
        robot.keyPress(KeyEvent.VK_TAB);
        robot.keyRelease(KeyEvent.VK_TAB);

    }


    @Then("user Delete discounts")
    public void userDeleteDiscounts() {
        dc.sendKeysFunction(dc.description2,"deva1");
        dc.clickFunction(dc.searchBttn);
        dc.waitUntilVisible(dc.deleteHacer);
        dc.clickFunction(dc.deleteHacer);
        dc.clickFunction(dc.deleteDialogBtn);





    }
}
