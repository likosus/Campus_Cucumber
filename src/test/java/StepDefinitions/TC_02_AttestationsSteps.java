package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import Utilities.GWD;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebElement;

import java.util.List;

public class TC_02_AttestationsSteps {
    LeftNav ln=new LeftNav();
    DialogContent dc=new DialogContent();


    @Given("Navigate to Campus")
    public void navigateToCampus() {
        GWD.getDriver().get("https://test.mersys.io/");

    }

    @When("Login username and Password and click login button")
    public void loginUsernameAndPasswordAndClickLoginButton() {
        dc.sendKeysFunction(dc.username, "turkeyts");
        dc.sendKeysFunction(dc.password,"TechnoStudy123");
        dc.waitUntilClickable(dc.loginButton);
        dc.clickFunction(dc.loginButton);

    }
    @Then("User should login successfully")
    public void userShouldLoginSuccessfully() {
        dc.verifyContainsTextFunction(dc.txtTechnoStudy,"Techno Study");
    }

    @And("Click on the element in leftNav")
    public void clickOnTheElementInLeftNav(DataTable items) {
        List<String> strButtons=items.asList(String.class);

        for (String strButton: strButtons) {
            WebElement element=ln.getWebElement(strButton); // webelemnti bul
            ln.clickFunction(element); // webelemente tıklat
        }
    }

    @Then("Click on the element in Dialogcontent")
    public void clickOnTheElementInDialogcontent(DataTable dialog) {
        List<String> strButtons=dialog.asList(String.class);

        for (String strButton: strButtons) {
            WebElement element=dc.getWebElement(strButton); // webelemnti bul
            dc.clickFunction(element); // webelemente tıklat
        }
    }


    @And("user sending the keys in Dialogcontent")
    public void userSendingTheKeysInDialogcontent(DataTable dt) {
        List<List<String>> items=dt.asLists(String.class);

        for (int i=0; i<items.size(); i++){
            WebElement element=dc.getWebElement(items.get(i).get(0));
            dc.sendKeysFunction(element,(items.get(i).get(1)));
        }

    }

    @Then("Success message should be displayed")
    public void successMessageShouldBeDisplayed() {
        dc.verifyContainsTextFunction(dc.successMessage,"success");
    }

    @Then("user Delete item in Dialogcontent")
    public void userDeleteItemInDialogcontent(DataTable dt) {

        List<String> Buttons=dt.asList(String.class);

        for (String searchText: Buttons) {
            dc.deleteItem(searchText);
        }
    }

    @Then("Already exist message should be displayed")
    public void alreadyExistMessageShouldBeDisplayed() {
        dc.verifyContainsTextFunction(dc.alreadyExist,"already");
    }
}

