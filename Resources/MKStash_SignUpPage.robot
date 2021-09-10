*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Signup as a User

        Wait Until Page Contains Element        //div[contains(text(),'Create an account')]
        click element       //div[contains(text(),'Create an account')]
        input text          //input[@placeholder='Enter your first name...']            Amritha
        input text          //input[@placeholder='Enter your last name...']             Shetty
        input text          //input[@placeholder='Enter your email address...']         shettyamritha25@gmail.com
        input text        //input[@placeholder='Enter your contact number...']         +918904419649
        scroll element into view    //select[@class='bubble-element Dropdown']
        Select From List By Index   //select[@class='bubble-element Dropdown']          2
        input text        //input[@placeholder='Enter your password...']                Pass@2018
        input text       //input[@placeholder='Enter your password again...']           Pass@2018
        wait until element contains     //button[normalize-space()='Signup']            Signup
        click button    //button[normalize-space()='Signup']