*** Settings ***
Library     SeleniumLibrary
Resource        ../Scenarios/LoginKeywords.robot
Resource        ../Locators/LocatorsAndVariables.robot

*** Keywords ***
         [Documentation]     Automation Test
         
Open Site
        Open Browser        ${URL}      ${BROWSER}
        Maximize Browser Window
        Sleep    2s

The User Login Credentials
        
        Set Browser Implicit Wait    3s
        Input Text      ${inputbox_kimlik}        ${TC_KIMLIK}
        Sleep    2s
        Input Text    xpath=//input[@id='odeal-form__item-:r1:']        ${SIFRE}
        Click Element    css=button[type='submit']
#        Input Text    xpath=(//input[@type='text'])[2]      1
#        Input Text     xpath=(//input[@type='text'])[3]     2
#        Input Text     xpath=(//input[@type='text'])[4]     3
#        Input Text     xpath=(//input[@type='text'])[5]     4
#        Input Text     xpath=(//input[@type='text'])[6]     5
#        Input Text     xpath=(//input[@type='text'])[7]     6
        Wait Until Element Is Enabled    css=button[type='submit']      3s
        Click Element    css=button[type='submit']











