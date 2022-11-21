*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** variables ***

*** Test Cases ***
Verify basic search functionality
    [documentation]  This test case verifies the basic search functionality
    [tags]  Functional

    Open Browser  https://www.ebay.com  chrome
    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  [Return]
    Page Should Contain  results for mobile
    Close Browser

*** keywords ***



