*** Settings ***

Documentation  Basic Functionality
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../Resources/MKStash_UserDefinedKeywords.robot
Resource    ../../Resources/MKStash_SetUp.robot
Resource    ../../Resources/MKStash_SignUpPage.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot
Resource    ../../Resources/PageObjects/MyAccountsPage.robot
Resource    ../../Resources/PageObjects/LandingPage.robot
Resource    ../../Resources/PageObjects/ProductDetailsPage.robot
Resource    ../../Resources/PageObjects/Cart.robot

Test Setup  CommonFunctionality.Start TestCase
#Test Teardown   CommonFunctionality.Finish TestCase
*** Variables ***



*** Test Cases ***

Verify SignUp Functionality for mkStash
       [Documentation]      This testcase is for SignUp functionality into MKStash website
       [Tags]    Functional

       #MKStash_SignUpPage.Signup as a User
       #MKStash_SignUpPage.Sign in using Google
       #MKStash_SignUpPage..Sign in using Facebook

Verify Login Functionality for mkStash
       [Documentation]      This testcase is for Login into MKStash website
       [Tags]    Functional

       #MKStash_UserDefinedKeywords.Login should fail with wrong Username and Password
       #MKStash_UserDefinedKeywords.Assert Warning Message
       MKStash_UserDefinedKeywords.Login as a User
       LandingPage.Search Product with filtering
       ProductDetailsPage.Add Product to the cart
       Cart.Verify My Cart Functionality
       Cart.Verify Checkout Functionality
       #MyAccountsPage.Verify My account Functionality
       ##MyAccountsPage.Loop a list
       #MyAccountsPage.Update Profile
       ##MyAccountsPage.Loop a items_on_page
       #MyAccountsPage.View order
       #MyAccountsPage.Add Shipping Address
       #MyAccountsPage.Edit Shipping Address
       #MyAccountsPage.Delete Shipping Address
       #MyAccountsPage.Change Password
       #MyAccountsPage.Logout




       # HeaderPage.Input Search Text and Click Search
      #  SearchResultsPage.Verify Search Results


#Verify advanced search functionality
     #   [Documentation]      This test Case verifies the advanced Search
     #   [Tags]    Functional