*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_0001 TimeOut
    [Documentation]    Set time that is used by various keywords
    ${tm}=    get selenium timeout
    log to console    ${tm}
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    set selenium timeout    10 seconds
    ${tm}=    get selenium timeout
    log to console    ${tm}
    wait until page contains    Robot
    input text    name:fld_username    Yasin
    input text    name:fld_email    yasinyazkan@test.com
    input text    name:fld_password    tatAa123!
