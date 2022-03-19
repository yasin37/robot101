*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_001 Close All Browser
    [Documentation]
    ...    Selenium cannot interact with Browser such as scroll bar action
    ...    Scroll bar action is not part of page (HTML) but is part of browser
    ...    Browser understand JavaScript
    ...    window.scrollBy(X,Y)    X--> Horizantal and Y --> Vertical
    ...    window.scrollBy(0, 100); // Scroll 100px downwards

    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    execute javascript    window.scrollBy(0,1000)
    sleep    3 seconds
    close all browsers

