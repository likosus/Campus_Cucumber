package Pages;

import Utilities.GWD;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class DialogContent extends Parent{
    public DialogContent() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy (id = "mat-input-0")
    public WebElement username;

    @FindBy(id="mat-input-1")
    public WebElement password;

    @FindBy(xpath="//span[@class='mat-button-wrapper']")
    public WebElement loginButton;

    @FindBy(css="span[class='mat-tooltip-trigger logo-text']")
    public WebElement txtTechnoStudy;

    @FindBy(xpath="//ms-add-button[contains(@tooltip,'ADD')]//button")
    public WebElement addButton;

    @FindBy(xpath="//ms-text-field[@formcontrolname='name']/input")
    public WebElement nameInput;

    @FindBy(xpath="//ms-save-button//button")
    public WebElement saveButton;

    @FindBy(xpath="//div[contains(text(),'successfully')]")
    public WebElement successMessage;

    @FindBy(xpath="//mat-form-field//input[@data-placeholder='Name']")
    public WebElement searchInput;

    @FindBy(xpath="//span[text()='Search'] ")  //ms-search-button//button
    public WebElement searchBttn;

    @FindBy(xpath="(//ms-edit-button//button)[1]")
    public WebElement editButton;

    @FindBy(xpath="(//ms-delete-button//button)[1]")
    public WebElement deleteImageBtn;

    @FindBy(xpath="//button[@type='submit']")
    public WebElement deleteDialogBtn;

    @FindBy(xpath="//div[contains(text(),'already exists')]")
    public WebElement alreadyExist;

    @FindBy(xpath=" (//ms-text-field//input)[3]")
    public WebElement ibanInput;

    @FindBy(xpath="(//span[text()='Currency'])[3]")
    public WebElement currency;
    @FindBy(xpath = "//span[text()=' EUR ']")
    public WebElement selectEur;

    @FindBy(xpath="  (//ms-text-field//input)[4]")
    public WebElement integrationCode;

    @FindBy(xpath="//div[@id='mat-select-value-11']") //!!!!!BUnda da var bişeyler
    public WebElement currencySerch;


    @FindBy(xpath="//ms-text-field[@formcontrolname='shortName']/input")
    public WebElement shortName;

    @FindBy(xpath="//ms-text-field[@type='number']/input")
    public WebElement orderNumber;

    @FindBy(xpath="//span[text()='None']") // ->burada tam alamadım  locatorı
    public WebElement selectGrade;

    @FindBy(xpath="(//span[text()='Stage'])[3]")
    public WebElement DTstage;

    @FindBy(xpath="//span[text()=' Student Registration ']")
    public WebElement DTsecondstage;

    @FindBy(xpath="//div[text()=' There is no data to display ']")
    public WebElement isNoData;





    public WebElement getWebElement(String strButton){

        switch (strButton)
        {
            case "addButton" : return addButton;
            case "nameInput" : return nameInput;
            case "saveButton" : return saveButton;
            case "searchInput" : return searchInput;
            case "editButton" : return editButton;
            case "searchBttn" : return searchBttn;
            case "deleteImageBtn" : return deleteImageBtn;
            case "deleteDialogBtn" : return deleteDialogBtn;
            case "ibanInput" : return ibanInput;
            case "currency" : return currency;
            case "selectEur" : return selectEur;
            case "integrationCode" : return integrationCode;
            case "currencySerch" : return currencySerch;
            case "shortName" : return shortName;
            case "orderNumber" : return orderNumber;
            case "selectGrade" : return selectGrade;
            case "DTstage":return DTstage;
            case "DTsecondstage":return DTsecondstage;


        }

        return null;
    }



    public void deleteItem(String searchText){ //buraya metod şeklinde almamızn sebebi her yerde kullanlsn diye
        sendKeysFunction(searchInput,searchText);
        clickFunction(searchBttn);   //fuse-progress-bar/*   gözüküyor

        wait.until(ExpectedConditions.numberOfElementsToBe(By.xpath("//fuse-progress-bar/*") , 0));

        clickFunction(deleteImageBtn);// -> sil butonu
        clickFunction(deleteDialogBtn); // ->sil dialog kutusu çıkan yer
    }
}











