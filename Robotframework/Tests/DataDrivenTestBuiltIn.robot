*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/InputData.robot

*** Test Cases ***
Valid login credentials - Successful login
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${valid_username}
    Input Text  ${txtbox_password}  ${invalid_password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_wrong_user_or_pw}
    Close Browser

Locked-out user - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${lockedout_user}
    Input Text  ${txtbox_password}  ${valid_password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_locked_user}
    Close Browser

Wrong username - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${invalid_username}
    Input Text  ${txtbox_password}  ${valid_password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_wrong_user_or_pw}
    Close Browser

Both username and passworg wrong - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  ${invalid_username}
    Input Text  ${txtbox_password}  ${invalid_password}
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  ${error_wrong_user_or_pw}
    Close Browser

