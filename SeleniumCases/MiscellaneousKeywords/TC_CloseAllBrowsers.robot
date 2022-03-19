*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_001 Close All Browser
    [Documentation]    Close All Browsers which are opened by Robot Framework Scripts
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    Yasin
    input text    name:fld_email    test@test.com
    input text    name:fld_password    tatAa123!
    open browser    https://www.google.com/    chrome
    close all browsers

