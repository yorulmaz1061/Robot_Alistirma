*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demostrate WebElement Operation Keywords
    [Documentation]  Test Case to demostrate WebElement Operation Keywords

    Open Browser  https://osf.digital/      Chrome
    Sleep    2s
    Click Element    css=a[id='CybotCookiebotDialogBodyLevelButtonAccept']
    Sleep  4s

	${attr}=    Get Element Attribute    css=h3[class='inner-content__title skin7']    class
	
	Log To Console    ${attr}
	
	



	${count}=  Get Element Count  xpath://*[@id="tsf"]//div[3]/center/input[1]   


	${width}  ${height}=  Get Element Size  xpath://*[@id="tsf"]//div[3]/center/input[1]

	Get WebElement  xpath://*[@id="tsf"]//div[3]/center/input[1]

	@{webelements}=  Get WebElements  xpath://*[@id="tsf"]//div[3]/center/input[1]

    Capture Element Screenshot  xpath://input[@name='q']

	Assign Id To Element  name:btnK  RCVid
    Page Should Contain Element	 RCVid

    Element Should Be Focused  xpath://input[@name='q']
    Element Should Be Visible  xpath://input[@name='q'] 

	Input Text  xpath://input[@name='q']  RCVAcademy

	Clear Element Text  xpath://input[@name='q']

	Cover Element  xpath://*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[2]

	Element Attribute Value Should Be  name:btnK  value  Google Search

	Element Should Be Enabled  name:btnK

	Element Should Not Be Visible  name:btnKgf

	Element Should Contain  xpath://*[@id="fsl"]/a[3]  How Search

	Element Should Not Contain  xpath://*[@id="fsl"]/a[3]  Google Search

	Element Text Should Be  xpath://*[@id="fsl"]/a[3]  How Search works
	   
	Element Text Should Not Be  xpath://*[@id="fsl"]/a[3]  How Search

	Double Click Element  xpath://*[@id="gb_70"]

	Click Element At Coordinates  xpath://*[@id="identifierNext"]/div[2]  15  10

	#Element Should Be Disabled  name:btnK 

	Close Browser

