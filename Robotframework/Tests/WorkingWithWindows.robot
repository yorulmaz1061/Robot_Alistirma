*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TC to demostrate Browser Window Operation Keywords in Robot FW
    [Documentation]  TC to demostrate Browser Window Operation Keywords in Robot FW

    Open Browser  http://salesforce.com  Chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep  4s
    Wait Until Element Is Visible  xpath://*[@id="main"]/div[6]/div/div[5]/div/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/div/div[2]/div[1]/div[6]/div/div/div/a
    Click Link  xpath://*[@id="main"]/div[6]/div/div[5]/div/div[2]/div/div/div[2]/div[1]/div[2]/div[2]/div/div[2]/div[1]/div[6]/div/div/div/a

    @{WindowHandles}=  Get Window Handles 
    Sleep  4s

    @{WindowIdentifier}=  Get Window Identifiers 
    Sleep  4s

	@{WindowNames}=  Get Window Names
	Sleep  4s

	@{WindowTitle}=  Get Window Titles
    Sleep  4s

	Set Window Position  100  200

	${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Sleep  4s

    Set Window Size  800  600

	${width}  ${height}=  Get Window Size 
    Log  ${width}
    Log  ${height}
    Sleep  4s

	Switch Window  @{WindowHandles}[1]
	Log  @{WindowHandles}[1]
    Sleep  4s

	Close Window
	Sleep  4s

	Switch Window  @{WindowHandles}[0]
	Close Window




