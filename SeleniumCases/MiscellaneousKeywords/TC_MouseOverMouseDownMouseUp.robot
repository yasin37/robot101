*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/
${BASE_URL_2}    https://www.sugarcrm.com/au/request-demo/
${Browser}    chrome

*** Test Cases ***
TC_001
    [Documentation]
    ...    Mouse down keyword means that simulates pressing the left mouse button on the element locator. The element is pressed without releasing the mouse button.
    ...    Mouse up keyword means that Simulates releasing the left mouse button on the element locator
	...    Mouse Over keyword means that Scrolls the element identified by locator into view.
	...    Mouse Out keyword means that Simulates hovering the mouse over the element locator.
	...    drag and drop keyword means that Drags the element identified by locator into the target element.


    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
    mouse over    //a[@title='TESTING QUIZ']
    mouse down    xpath://span[contains(text(),'JMeter Quiz')]
    close browser

TC_002
    open browser    ${BASE_URL_2}    ${Browser}
    maximize browser window
    scroll element into view    //input[@value='Request a Demo']
    mouse down    xpath://input[@placeholder='Job Title*']
    sleep    3 seconds
    mouse up    xpath://input[@placeholder='Job Title*']
    sleep    3 seconds
    scroll element into view    xpath://div[contains(text(),' © 2021 SugarCRM Inc. All Rights Reserved.')]
    mouse over    xpath://a[contains(text(),'Contact Us')]
    sleep    3 seconds
    mouse out    xpath://a[contains(text(),'Contact Us')]
    sleep    3 seconds

    go to    https://demoqa.com/droppable
    drag and drop    id:draggable    id:droppable
    sleep    3 seconds
    close all browsers



