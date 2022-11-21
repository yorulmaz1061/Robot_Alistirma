*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Filter results by condition
    Mouse Over  //*[@id="w7"]/button/div
    Sleep  3s
    Mouse Down  //*[@id="w7"]/div/ul/li[2]
    Click Element  //*[@id="w7"]/div/ul/li[2]

Verify filter results
    Element Should Contain  //*[@id="srp-river-results-query_answer1-w0-x-carousel-items"]/ul/li[1]/div/a/div  New

