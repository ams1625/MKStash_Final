*** Settings ***
Library  SeleniumLibrary
Library      String


*** Variables ***
${Delay}  2s

*** Keywords ***
Add Product to the cart
    sleep  ${Delay}
    ${stocktext}=    get text   //body/div[@class='main-page bubble-element Page']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[@class='bubble-r-line']/div[@class='bubble-r-box']/div[@class='bubble-element Group']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
    sleep  ${Delay}
    ${Qty_text}=       Remove String        ${stocktext}  ,    Quantity:
    ${stocks_left}=    Remove String        ${Qty_text}   ,     stocks left!
    FOR    ${i}    IN RANGE    1  ${stocks_left}
        sleep   ${Delay}
        click button    //button[normalize-space()='+']
       # ${result}=   Evaluate    ${Price} * ${i}
        sleep   ${Delay}
    END
    wait until page contains element   //div[contains(text(),'Vans off the wall rubber shoes')]
    click button        //button[normalize-space()='Add to Cart']
    sleep  5s
    sleep  ${Delay}
    click button       //button[@class='ion-ios-cart-outline inner-element bubble-element clickable-element']
