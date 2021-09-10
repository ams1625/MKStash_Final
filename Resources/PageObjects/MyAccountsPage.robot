*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FirstName}        Amritha
${LastName}         Shetty
${Phone}            8904419649
${Female}           2
${FridaySaleText}   Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.
${Summary}          Summary
${Delay}            5s

*** Keywords ***
Verify My account Functionality
    wait until element contains  //div[@class='content'][normalize-space()='Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.']     ${FridaySaleText}
    wait until element contains       //div[contains(text(),'My Account')]   My Account
    #Element Text Should Be             Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.
    wait until element contains  //div[@class='content'][normalize-space()='Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.']     ${FridaySaleText}
    Click Element      //div[contains(text(),'My Account')]

Update Profile
    wait until page contains element    //div[contains(text(),'First Name')]
    Wait until page contains element    //div[contains(text(),'Profile')]
    Input Text      //input[@placeholder='Enter first name...']         ${FirstName}
    Input Text      //input[@placeholder='Enter your email...']         ${LastName}
    Input text      //input[@placeholder='Enter your phone number...']   ${Phone}
    scroll element into view    //select[@class='bubble-element Dropdown']
    Select From List By Index    //select[@class='bubble-element Dropdown']  ${Female}
    Click Element      //button[normalize-space()='Save']
    Click Element      //div[contains(text(),'Orders')]
    wait until element contains  //div[@class='content'][normalize-space()='Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.']     ${FridaySaleText}
    wait until element contains    //div[@class='bubble-element Text']//div[@class='content'][normalize-space()='My Account']          My Account

Loop a items_on_page
    ${items_on_page}=   get element count   //div[contains(@class, 'bubble-element GroupItem group-item entry')]
    #log to console  ${items_on_page}

    run keyword if  ${items_on_page} == 1    Test Keyword 1
    ...    ELSE IF  ${items_on_page} < 10 and ${items_on_page} > 1     Test Keyword 2
    ...    ELSE  Test Keyword 3

Test Keyword 1
       log to console  Executed Keyword1 - Found less as expected
       close browser
Test Keyword 2       log to console  Executed Keyword2 - Found Items as expected
       close browser
Test Keyword 3
       log to console  Executed Keyword3 - exception
       close browser

View order
        Sleep   2
        ${view_order}=   get element count   //div[contains(@class, 'bubble-element GroupItem group-item entry')]
        FOR    ${i}    IN RANGE    1  ${view_order}
        sleep  1
        Click Element        (//div[contains(@class, 'bubble-element GroupItem group-item entry')]/following::div[text()='View Order'])[${i}]
        sleep  1
        click element        //div[@class='bubble-element Popup']//button[@class='ion-android-close inner-element bubble-element clickable-element']
        #Exit For Loop If    ${view_order}
        END

Add Shipping Address
         wait until element contains    //div[contains(text(),'Shipping Address')]      Shipping Address
         click element      //div[contains(text(),'Shipping Address')]
         click element       //button[normalize-space()='New Shipping Address']
         wait until element contains    //div[contains(text(),'New Shipping Address')]      New Shipping Address
         input text         //input[@placeholder='Enter your street here...']      TestStreet
         input text         //input[@placeholder='Enter your city here...']         TestCity
         input text         //input[@placeholder='Choose your State']               TestState
         input text         //input[@placeholder='Enter zip code...']               56789
         click button       //button[normalize-space()='Add']

Edit Shipping Address
        wait until element contains    //div[contains(text(),'Shipping Address')]      Shipping Address
        wait until page contains element      //body/div[@class='main-page bubble-element Page']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element RepeatingGroup']/div[@class='rows']/div[@class='bubble-element GroupItem group-item entry-1']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[2]/div[1]/div[1]/div[1]
        click element      //body/div[@class='main-page bubble-element Page']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element RepeatingGroup']/div[@class='rows']/div[@class='bubble-element GroupItem group-item entry-1']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[2]/div[1]/div[1]/div[1]
        input text         //input[@placeholder='Enter your street here...']      TestStreet1
        input text         //input[@placeholder='Enter your city here...']         TestCity1
        input text         //input[@placeholder='Choose your State']               TestState1
        input text         //input[@placeholder='Enter zip code...']               567891
        click button       //button[normalize-space()='Save']

Delete Shipping Address
        wait until page contains element    //body/div[@class='main-page bubble-element Page']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element RepeatingGroup']/div[@class='rows']/div[@class='bubble-element GroupItem group-item entry-1']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[3]/div[1]/div[1]/div[1]/div[1]
        click element       //body/div[@class='main-page bubble-element Page']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element RepeatingGroup']/div[@class='rows']/div[@class='bubble-element GroupItem group-item entry-1']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[3]/div[1]/div[1]/div[1]/div[1]


Change Password
        wait until element contains     //div[contains(text(),'Change Password')]       Change Password
        click element                   //div[contains(text(),'Change Password')]
        wait until element contains      //div[contains(text(),'You are currently Logged In via Facebook/Google.')]      You are currently Logged In via Facebook/Google.

Logout
       wait until element contains     //div[contains(text(),'Logout')]         Logout
       click element               //div[contains(text(),'Logout')]
