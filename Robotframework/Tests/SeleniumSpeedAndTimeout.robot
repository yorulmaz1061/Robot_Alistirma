*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to Selenium Speed and Timeout in Robot Framework
    [Documentation]  Test Case to Selenium Speed and Timeout in Robot Framework
#    ${default_selenium_timeout}=  Get Selenium Timeout
#    ${default_selenium_speed}=  Get Selenium Speed
#    Set Selenium Speed  1s
#    Set Selenium Timeout  8s
    Set Selenium Implicit Wait  10s
    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    ${test}=  Get Selenium Implicit Wait
    Maximize Browser Window

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a/fghfg

    Mouse Down  xpath://*[@id="field25"]/div/input

    Mouse Up  xpath://*[@id="field25"]/div/input

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

    Mouse Down On Link   xpath://*[@id="menu-item-107"]/a

    ${default_selenium_speed1}=  Get Selenium Implicit Wait
#    ${default_selenium_timeout1}=  Get Selenium Timeout

    Close Browser



