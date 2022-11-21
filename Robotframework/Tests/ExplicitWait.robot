*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demonstrate explicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate explicit wait in Robot Framework

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a

    Wait Until Page Contains  With our customers 
    Wait Until Page Contains Element  xpath://*[@id="menu-item-19419"]/a   
    Wait Until Page Does Not Contain  With our customerss
    Wait Until Page Does Not Contain Element  xpath://*[@id="menu-item-19419"]/abch

    Wait Until Location Is  https://www.sugarcrm.com/au/request-demo/ 
    Wait Until Location Is Not  https://www.sugarcrm.com/au/request-demo/abc 
    Wait Until Location Contains  au
    Wait Until Location Does Not Contain  aud

    Wait Until Element Contains  xpath://*[@id="menu-item-19419"]/a  Deployment Options  timeout=10s  error=Found Text
    Wait Until Element Does Not Contain  xpath://*[@id="menu-item-16789"]/a  random text
    Wait Until Element Is Enabled  xpath://*[@id="menu-item-19419"]/a
    Wait Until Element Is Not Visible  xpath://*[@id="menu-item-19419"]/a/b
    Wait Until Element Is Visible  xpath://*[@id="menu-item-19419"]/a

    Close Browser



