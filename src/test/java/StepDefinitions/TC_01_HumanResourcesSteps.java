package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.java.en.Then;

public class TC_01_HumanResourcesSteps {

    LeftNav ln=new LeftNav();
    DialogContent dc=new DialogContent();

    @Then("is no data message should be displayed")
    public void isNoDataMessageShouldBeDisplayed() {

        dc.verifyContainsTextFunction(dc.isNoData, "There is no data to display");
    }
}
