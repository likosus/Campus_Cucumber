package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent{

    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(xpath = "(//span[text()='Setup'])[1]")
    public WebElement setup;

    @FindBy(xpath = "//span[text()='Parameters']")
    public WebElement parameters;

    @FindBy(xpath = "//span[text()='Discounts']")
    public WebElement discounts;

    @FindBy(xpath = "//span[text()='Grade Levels']")
    public WebElement gradeLevels;

    @FindBy(xpath = "//span[text()='Bank Accounts']")
    public WebElement bankAccounts;

    @FindBy(xpath = "//span[text()='School Setup']")
    public WebElement schoolSetup;

    @FindBy(xpath = " //span[text()='Departments']")
    public WebElement departments;

    @FindBy(xpath = "//span[text()='Locations']")
    public WebElement locations;

    @FindBy(xpath = "//span[text()='Education']")
    public WebElement education;

    @FindBy(xpath = "//span[@class='nav-link-title ng-tns-c111-24 ng-star-inserted']")
    public WebElement educationSetup;

    @FindBy(xpath = " //span[text()='Subject Categories']")
    public WebElement subjectCategories;

    @FindBy(xpath = "  //span[text()='Fields']")
    public WebElement fields;

    @FindBy(xpath = "//span[text()='Document Types']")
    public WebElement documentTypes;

    @FindBy(xpath = "//span[text()='Position Categories']")
    public WebElement positionsCategories;

    @FindBy(xpath=" //span[contains(text(),'Human Resources')]")
    public WebElement humanResources;

    @FindBy(xpath="//span[@class='nav-link-title ng-tns-c111-18 ng-star-inserted']")
    public WebElement setupHuman;

    @FindBy(xpath="//span[text()='Attestations']")
    public WebElement attestations;

    @FindBy(xpath=" //span[text()='Positions']")
    public WebElement positions;

    @FindBy(xpath = "//span[text()='Nationalities'][1]")
    public WebElement nationalities;





    //şunu denemeye çalışıyorum
    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "humanResources" : return humanResources;
            case "setupHuman" : return setupHuman;
            case "attestations" : return attestations;
            case "setup" : return setup;
            case "parameters" : return parameters;
            case "bankAccounts" : return bankAccounts;
            case "gradeLevels" : return gradeLevels;
            case "education" : return education;
            case "educationSetup" : return educationSetup;
            case "subjectCategories" : return subjectCategories;
            case "positionCategories" : return positionsCategories;
            case"positions":return positions;
            case "schoolSetup" : return schoolSetup;
            case "departments" : return departments;
            case "nationalities" : return nationalities;
            case "locations" : return locations;
            case "documentTypes" : return documentTypes;
            case"discounts":return discounts;
            case"fields":return fields;

        }

        return null;
    }



}
