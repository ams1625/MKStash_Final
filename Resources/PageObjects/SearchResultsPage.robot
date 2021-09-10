*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
        page should contain  results for men

Select Product category

Select delivery options