*** Settings ***
Library    SeleniumLibrary
Documentation    Fetch Value from Application at Runtime


*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings/


*** Test Cases ***
TC_001 Fetch Data 1
     [Documentation]
     ...    Fetch Page Title
     ...    Fetch Selenium Speed
     ...    Fetch Text
     ...    Fetch Value

    open browser    ${URL}    ${Browser}
    maximize browser window
    ${PageTitle}=    get title
    log    ${PageTitle}
    ${speed}=    get selenium speed
    log    ${speed}
    ${value}=   get value    xpath://input[@type='submit']
    log    ${value}
    ${text}=    get text    xpath://a[@class='displayPopup']
    log    ${text}
    close browser

