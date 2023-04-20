package StepDefinitions;

import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;


public class TC_07_SchoolLocationsSteps {
    DialogContent dc=new DialogContent();
    WebDriverWait wait=new WebDriverWait(GWD.getDriver(),
            Duration.ofSeconds(30));



    @Then("user Delete item in Dialogcontent Alper")
    public void userDeleteItemInDialogcontentAlper(DataTable items) {

        dc.waitUntilClickable(dc.deleteButtonAlper);
        dc.deleteButtonAlper.click();
        dc.waitUntilClickable(dc.deleteDialogBtn);
        dc.deleteDialogBtn.click();


    }
}
