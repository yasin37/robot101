*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/

${Browser}    chrome

*** Test Cases ***
TC_001
    [Documentation]
    ...    Press Keys means that Simulates the user pressing key(s) to an element or on the active browser.
    ...    selenium.webdriver.common.keys can be used for special character or ASCII value of Special Character
    ...    https://www.selenium.dev/selenium/docs/api/py/webdriver/selenium.webdriver.common.keys.html#selenium.webdriver.common.keys.Keys.ESCAPE

    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
    click link    xpath://a[contains(text(),'Login')]
    press keys    id:username    ABCZZZ
    press keys    xpath://button[@type='submit']    \ue007
    sleep    5 seconds
    close browser





