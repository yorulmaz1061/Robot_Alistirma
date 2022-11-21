*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demonstrate implicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate implicit wait in Robot Framework

    ${default_implicit_wait}=  Get Selenium Implicit Wait

#    Set Browser Implicit Wait  20s
#    ${custom_implicit_wait}=  Get Selenium Implicit Wait

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

    Mouse Down  xpath://*[@id="field25"]/div/input

    Mouse Up  xpath://*[@id="field25"]/div/input/asads

    Close Browser



