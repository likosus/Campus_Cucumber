package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebElement;

import java.awt.*;
import java.awt.event.KeyEvent;
import java.util.List;

public class TC_09_BankAccountSteps {
    LeftNav ln=new LeftNav();
    DialogContent dc=new DialogContent();


    @When("user sending the keys in Dialogcontent nine")
    public void userSendingTheKeysInDialogcontentNine(DataTable dt) {
        List<List<String>> elemanlar=dt.asLists(String.class);

        for (int i=0; i<elemanlar.size(); i++){
            WebElement element=dc.getWebElement(elemanlar.get(i).get(0));
            dc.sendKeysFunction(element,(elemanlar.get(i).get(1)));
        }

    }

    @And("Click on the element in Dialogcontent nine")
    public void clickOnTheElementInDialogcontentNine(DataTable dialog) {
        List<String> strButtons=dialog.asList(String.class);

        for (String strButton: strButtons) {
            WebElement element=dc.getWebElement(strButton);
            dc.clickFunction(element);
        }
    }

    @Then("Success message should be displayed nine")
    public void successMessageShouldBeDisplayedNine() {
        dc.verifyContainsTextFunction(dc.successMessage,"success");
    }

    @Then("Already exist message should be displayed nine")
    public void alreadyExistMessageShouldBeDisplayedNine() {
        dc.verifyContainsTextFunction(dc.alreadyExist,"already");
    }

    @Then("user Delete item in Dialogcontent nine")
    public void userDeleteItemInDialogcontentNine(DataTable dt) {
        List<String> Buttons=dt.asList(String.class);

        for (String searchText: Buttons) {
            dc.deleteItem(searchText);
        }
    }

    @And("click the edit buttonBankAccounts")
    public void clickTheEditButtonBankAccounts() throws AWTException {
        Robot rbt= new Robot();

        for (int i = 0; i < 9 ; i++) {

            rbt.keyPress(KeyEvent.VK_TAB);
            rbt.keyRelease(KeyEvent.VK_TAB);
        }

        rbt.keyPress(KeyEvent.VK_ENTER);
        rbt.keyRelease(KeyEvent.VK_ENTER);
    }
}
