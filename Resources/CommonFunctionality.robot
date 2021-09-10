*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
This is for secure Authentication
Start TestCase
    #Open Browser     https://Jairosoft:j@!r0$0fT@mkstash.bubbleapps.io/version-test       Chrome
    #Open Browser     https://username:password@mkstash.com/version-test           Chrome
    Open Browser        https://mkstash.com/version-test/           Chrome
    maximize browser window

Finish TestCase

    Close Browser

