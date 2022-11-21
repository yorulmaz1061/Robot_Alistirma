*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/InputData.robot

*** Test Cases ***
Login Test Scenarios
    [Template]  Test login scenarios
    ${valid_username}  ${invalid_password}  ${error_wrong_user_or_pw}


    ${error_locked_user}

Valid login credentials - Successful login
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${valid_username}
    Input Text  ${txtbox_password}  ${invalid_password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_wrong_user_or_pw}
    Close Browser


