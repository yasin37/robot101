*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    http://demo.guru99.com/test/simple_context_menu.html
${Browser}    chrome

*** Test Cases ***
TC_001 Right Click
    [Documentation]
    ...    "open context menu" keyword means right click
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    open context menu    xpath://span[contains(text(),'right click me')]
    #mouse up    xpath://li[contains(@class,'context-menu-icon-delete')]
    #mouse up    xpath://span[contains(text(),'Delete')]
    #mouse over    xpath://li[contains(@class,'context-menu-icon-delete')]
    sleep    3 seconds
    close browser

TC_002 Double Click

    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    double click element    xpath://button[text()='Double-Click Me To See Alert']
    sleep    3 seconds
    close browser


