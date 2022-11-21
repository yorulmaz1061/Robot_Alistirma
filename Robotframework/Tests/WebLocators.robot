*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Weblocators in Robot FW
    [Documentation]  This is sample test case to demostrate Weblocators in Robot FW

    #Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Open Browser  https://developer.salesforce.com/signup  chrome
    Maximize Browser Window
    #Input Text  css:select#job_role :nth-child(2)  rcvacademy@test.com
    Input Text  css:div.field_container *:first-child  Developer

    #Select From List By Value  css:#field27 > div > select > option:nth-child(2)  level1
    Sleep  4s
    Close Browser