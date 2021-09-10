*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Username}  ashetty@jairosoft.com
${Password}        yP<*HD3T!
${WrongPassword}    123456
${WarningMessage}  Login Failed!
${ExpectedWarningMessage}
${Delay}  5s

*** Keywords ***
Login as a User
    Wait Until Page Contains Element    //div[contains(text(),'Our Products')]
    Click Element    //div[contains(text(),'Login')]
    Wait Until Page Contains Element    //div[contains(text(),'Welcome Back!')]
    Input text       //input[@type='email']                 ${Username}
    Input text       //input[@placeholder='Enter your password...']         ${Password}
    Click Element    //button[normalize-space()='Login']
    Wait until page contains element        //div[@id='ani_text']//div[@class='content'][normalize-space()='My Account']
    page should contain element  //div[@class='content'][normalize-space()='Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.']      Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.

Sign in using Google
    wait until page contains element        //button[normalize-space()='Google']
    click button        //button[normalize-space()='Google']


Sign in using Facebook
     Wait until page contains element    //button[normalize-space()='Facebook']
     click button       //button[normalize-space()='Google']

Login Should Fail With Wrong Username and Password
    Wait Until Page Contains Element    //div[contains(text(),'Our Products')]
    Click Element    //div[contains(text(),'Login')]
    Wait Until Page Contains Element    //div[contains(text(),'Welcome Back!')]
    Input text       //input[@type='email']                 ${Username}
    Input text       //input[@placeholder='Enter your password...']         ${WrongPassword}
    Click Element    //button[normalize-space()='Login']
    sleep    ${Delay}


Assert Warning Message
    Element Text Should Be   css=.error   ${ExpectedWarningMessage}   ${WarningMessage}