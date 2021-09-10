*** Settings ***
Library  SeleniumLibrary
Library      String

*** Variables ***

${search}        search
${FridaySaleText}       Lorem ipsum dolor sit BLACK FRIDAY SALE! 30% tempor incididunt.


*** Keywords ***
Verify My Cart Functionality
     sleep  3s
     Click Element      (//div[@class='bubble-element GroupItem group-item entry-1']//div[@class='bubble-element Group clickable-element'])[1]
    # Click Element      (//div[@class='bubble-element GroupItem group-item entry-1']//div[@class='bubble-element Group clickable-element'])[2]
     sleep  5s
    # Click Element      (//div[@class='bubble-element GroupItem group-item entry-1']//div[@class='bubble-element Group clickable-element'])[3]
     wait until element contains       //div[contains(text(),'Vans off the wall rubber shoes')]     Vans off the wall rubber shoes


Verify Checkout Functionality
    click element         //button[normalize-space()='Checkout']
    sleep   3s
    click element           //button[normalize-space()='Next']
    click element           //button[normalize-space()='Checkout']

