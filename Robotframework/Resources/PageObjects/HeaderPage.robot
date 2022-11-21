*** Settings ***
Library  SeleniumLibrary
Variables  ../Webelements.py

*** Variables ***


*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text  ${HomePageSearchTextBox}  ${search_text}
    Press Keys  ${HomePageSearchButton}  RETURN

Click on Advanced Search Link
    Click Element  ${HomePageAdvancedSearchLink}