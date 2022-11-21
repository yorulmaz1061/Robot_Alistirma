*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://google.com
${browser}  chrome

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demostrate Browser Operation Keywords in Robot Framework

    Open Browser  http://google.com  Chrome  alias=ChromeRCV

    Maximize Browser Window

    Open Browser  about:blank  ff  alias=RCVFF

    &{alias}  Get Browser Aliases

    Log	 @{alias}[1]

    @{browser_ID}  Get Browser Ids

    Log  @{browser_ID}[1]

    Switch Browser  1

    Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input  RCVAcademy

    Sleep  4s

    Switch Browser  @{alias}[1]

    Go To  http://salesforce.com

    Close All Browsers