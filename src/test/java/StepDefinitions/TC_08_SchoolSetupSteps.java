package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.java.en.Then;

public class TC_08_SchoolSetupSteps {

    LeftNav ln=new LeftNav();
    DialogContent dc=new DialogContent();

    @Then("deletedKadir")
    public void deletedkadir() {
        dc.verifyContainsTextFunction(dc.deleteKadir, "already");

    }

    @Then("School Department successfully deleted")
    public void schoolDepartmentSuccessfullyDeleted() {

        dc.verifyContainsTextFunction(dc.departmentSuccessfullyDeleted, "School Department successfully deleted");
    }



}
