*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
${txtbox_username}  id:user-name
${txtbox_password}  id:password
${btn_login}  xpath://*[@id="login_button_container"]/div/form/input[3]
${txt_error}  xpath://*[@id="login_button_container"]//h3

*** Test Cases ***
Valid login credentials - Successful login
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_user
    Input Text  ${txtbox_password}  secret_sa
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Locked-out user - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  locked_out_user
    Input Text  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Sorry, this user has been locked out.
    Close Browser

Wrong username - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_u
    Input Text  ${txtbox_password}  secret_sauce
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

Both username and passworg wrong - Login failed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  ${txtbox_username}  standard_u
    Input Text  ${txtbox_password}  secret_s
    Click Button  ${btn_login}
    Element Should Contain  ${txt_error}  Epic sadface: Username and password do not match any user in this service
    Close Browser

