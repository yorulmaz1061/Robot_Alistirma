*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***
TC to demonstrate working with frames in Robot FW
    [Documentation]  TC to demonstrate working with frames in Robot FW

    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  Chrome
    Maximize Browser Window

    Select Frame  id:iframeResult

    Current Frame Should Contain  JavaScript Alert

    Current Frame Should Not Contain  JavaScript Confirm Box Two

    Unselect Frame

    Frame Should Contain  id:iframeResult  JavaScript Alert

    Close Browser