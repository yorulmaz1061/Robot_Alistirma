*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** variables ***

*** Test Cases ***
Verify basic search functionality
    [documentation]  This test case verifies the basic search functionality
    [tags]  Functional

    Open Browser  https://www.ebay.com  chrome
    Input Text  xpath=//*[@id="gh-ac"]  mobile
    Click Element  xpath=//*[@id="gh-btn"]
    Page Should Contain  results for mobile
    Close Browser

*** keywords ***




