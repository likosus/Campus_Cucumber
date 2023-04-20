package StepDefinitions;

import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.java.en.When;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

public class TC_10_GradeLevelSteps {
    @When("clickdown")
    public void clickdown() {

        DialogContent dc=new DialogContent();

            Actions down=new Actions(GWD.getDriver());
            down.keyDown(Keys.DOWN);
            down.keyUp(Keys.DOWN);
            down.build().perform();
        }
    }

