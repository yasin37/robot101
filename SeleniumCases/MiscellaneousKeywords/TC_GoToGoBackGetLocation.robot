*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_001 Close All Browser
    [Documentation]
    ...    go to --> Navigates the current browser window to the provided url
    ...    get location --> Returns the current browser window URL
    ...    go back --> Simulates the user clicking the back button on their browser

    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    go to    https://www.google.com
    ${URL_1}=    get location
    log to console    ${URL_1}
    go back
    ${URL_1}=    get location
    log to console    ${URL_1}

    close all browsers

