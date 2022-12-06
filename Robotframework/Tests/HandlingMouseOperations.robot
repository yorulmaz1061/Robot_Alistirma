*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demonstrate mouse operations in Robot Framework
    [Documentation]  Test Cas   e to demonstrate mouse operations in Robot Framework

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window

    Scroll Element Into View  id:interest_market_c0

    Mouse Down  xpath://*[@id="field25"]/div/input
    Sleep  2s
    Mouse Up  xpath://*[@id="field25"]/div/input
    Sleep  2s

    Scroll Element Into View  xpath://*[@id="menu-item-115"]/a
    Sleep  4s

    Mouse Down On Link   xpath://*[@id="menu-item-107"]/a
	Sleep  4s

	Mouse Over  xpath://*[@id="menu-item-19419"]/a
	Sleep  4s

	Mouse Out  xpath://*[@id="menu-item-19419"]/a
	Sleep  4s

    Mouse Down On Image  xpath://footer//div[1]/a/img
	Sleep  4s

    #Drag and drop example
	Go to  https://demoqa.com/droppable/
    Drag And Drop  xpath://*[@id="draggable"]/p  xpath://*[@id="droppable"]
    Sleep  4s

    #Right click on element
    Open Context Menu  xpath://*[@id="sidebar"]/aside[2]/ul/li[2]/a
    Sleep  2s

    Close Browser
    
    Should Be Equal    first    second



