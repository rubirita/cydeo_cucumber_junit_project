package com.cydeo.page;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class GoogleSearchPage {

    //kreiram constructor and initialize the driver with object
    public GoogleSearchPage(){
        PageFactory.initElements(Driver.getDriver(),this);

    }

    //use @FindBy instead of findElement()
    @FindBy(name="q")// samo lociram searchBox u googlu
    public WebElement searchBox;


}
