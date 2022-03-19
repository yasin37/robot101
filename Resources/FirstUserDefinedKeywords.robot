*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings
${Browser_Type}    chrome

*** Keywords ***
Start Browser and Maximize
    [Documentation]    The keyword is for Start Browser and Maximize its Window
    [Timeout]    20s
    [Arguments]    ${BASE_URL}    ${Browser_Type}
    open browser    ${BASE_URL}    ${Browser_Type}
    maximize browser window
    ${Title}=    get title
    [Return]    ${Title}

