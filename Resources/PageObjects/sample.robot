*** Settings ***
Library  SeleniumLibrary



*** Variables ***


*** Keywords ***
Loop a order1
         ${view_order}=   get element count   //div[contains(@class, 'bubble-element GroupItem group-item entry')]
         FOR     ${i}   IN   ${view_order}
         Click Element        (//div[contains(@class, 'bubble-element GroupItem group-item entry')]/following::div[text()='View Order'])[${view_order}]
         END



Loop a list
        @{view_List}=      Create List   Bender   Johnny5    Terminator    Robocop4
        FOR     ${i}   IN    @{view_List}
              log to console    ${i}
        END


    #wait until element contains         //div[contains(text(),'Profile')]     Profile
    #wait until element contains       //div[contains(text(),'Orders')]           Orders
    #wait until element contains      //div[contains(text(),'Change Password')]          Change Password
    #wait until element contains     //div[contains(text(),'Shipping Address')]       Shipping Addres
    #wait until element contains     //div[contains(text(),'Logout')]        Logout
    #wait until element contains      //div[contains(text(),'Copyright ©2021 MK Stash. All rights reserved.')]    Copyright ©2021 MK Stash. All rights reserved.
    #Sleep   3