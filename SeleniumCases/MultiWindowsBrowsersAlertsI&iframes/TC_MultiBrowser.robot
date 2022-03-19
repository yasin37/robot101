*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_1}    https://thetestingworld.com/testings/
${URL_2}    https://www.google.com/
${Browser}    chrome

*** Test Cases ***
TC_001 Multi Browser Handlings
    [Documentation]    switch browser index starts from 1
    open browser    ${URL_1}    ${Browser}
    maximize browser window
    open browser    ${URL_2}    ${Browser}
    maximize browser window
    switch browser    1
    ${Curr_URL}=    get location
    log to console    ${Curr_URL}
    click element    xpath://label[contains(text(),'Login')]
    switch browser    2
    input text    name:q    Şampiyon Beşiktaş
    close all browsers