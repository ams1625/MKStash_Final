*** Settings ***
Library  SeleniumLibrary
Library      String

*** Variables ***

${search}        search
${FridaySaleText}       Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.
${Delay}  5s
${SearchText}        Vans off the wall rubber shoes


*** Keywords ***
Search Product with filtering
    wait until element contains     //div[@class='content'][normalize-space()='Shop']       Shop
    wait until element contains     //div[@class='content'][normalize-space()='Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.']     ${FridaySaleText}
    wait until element contains     //div[contains(text(),'My Account')]        My Account
    click element                   //div[@class='content'][normalize-space()='Shop']
    sleep  ${Delay}
    wait until page contains element         //div[contains(text(),'Search')]
    wait until page contains element          //input[@id='search_prod']
    click element                    //input[@id='search_prod']
    Input text                      //input[@id='search_prod']       ${SearchText}
    click element                       //div[@class='bubble-element GroupItem group-item entry-1']//img
    sleep  ${Delay}
