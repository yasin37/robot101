*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://testautomationpractice.blogspot.com/
${URL_2}    http://demo.automationtesting.in/Alerts.html
${Browser}    chrome

*** Test Cases ***

TC_001 Click OK Button on PopUp Alert Message
    open browser    ${URL}    ${Browser}
    maximize browser window
    click button    xpath://button[contains(text(),'Click Me')]
    handle alert    ACCEPT
    close browser

TC_002 Click Cancel Button on PopUp Alert Message
    open browser    ${URL}    ${Browser}
    maximize browser window
    click button    xpath://button[contains(text(),'Click Me')]
    handle alert    DISMISS
    close browser

TC_003 Keep Leave for PopUp Alert Message
    open browser    ${URL}    ${Browser}
    maximize browser window
    click button    xpath://button[contains(text(),'Click Me')]
    handle alert    LEAVE
    close browser

TC_004 Verify Alert Message
    [Documentation]    After Alert verification the alert is closed automatically
    open browser    ${URL}    ${Browser}
    maximize browser window
    click button    xpath://button[contains(text(),'Click Me')]
    alert should be present    Press a button!
    close browser

TC_005 Alert with TextBox
    open browser    ${URL_2}    ${Browser}
    maximize browser window
    click element    xpath://a[@href='#Textbox']
    click element    xpath://button[contains(text(),'click the button to demonstrate the prompt box ')]
    input text into alert    Şampiyon Beşiktaş
    close browser


