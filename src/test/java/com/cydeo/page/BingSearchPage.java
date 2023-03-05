package com.cydeo.page;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class BingSearchPage {

    //prvo konstraktor
    public BingSearchPage(){
        PageFactory.initElements(Driver.getDriver(),this);

    }

    @FindBy(name = "q")
    public WebElement searchBox;

}
