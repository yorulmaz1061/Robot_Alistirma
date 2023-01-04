*** Settings ***
Resource    ../Keywords/LoginTest.robot
Test Setup      Open Site
Test Teardown       Close Browser

*** Test Cases ***
LoginTest
        [Documentation]     Automation Test

        Given The User Login Credentials
        When the user ööööö








