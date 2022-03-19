*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_0001 SetSelenium Speed
    [Documentation]    Set the delay that is waited after each Selenium Command
    ${speed}=    get selenium speed
    log to console    ${speed}
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    set selenium speed    5 seconds
    input text    name:fld_username    Yasin
    input text    name:fld_email    yasinyazkan@test.com
    input text    name:fld_password    tatAa123!
    ${speed}=    get selenium speed
    log to console    ${speed}

TC_0002 Sleep Command
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    sleep    5 seconds
    input text    name:fld_username    Yasin
    input text    name:fld_email    yasinyazkan@test.com
    input text    name:fld_password    tatAa123!

