package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import Utilities.GWD;
import io.cucumber.java.en.When;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

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
}
