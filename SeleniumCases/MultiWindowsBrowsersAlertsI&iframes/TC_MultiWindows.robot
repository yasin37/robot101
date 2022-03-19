*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://robotframework.org/
${URL_2}    https://gxd4e.csb.app/
${Browser}    chrome

*** Test Cases ***
TC_001 Display URLs of Main and New Windows
    open browser    ${URL}    ${Browser}
    maximize browser window
    scroll element into view    xpath://a[contains(text(),'RPA framework')]
    click element    xpath://a[contains(text(),'RPA framework')]
    @{list_1}    get window handles

    FOR    ${win}    IN    @{list_1}
        switch window    ${win}
        ${CURR_URL}=    get location
        log to console    ${CURR_URL}
    END

    close all browsers

TC_002 Switch Window Method 1
    open browser    ${URL_2}    ${Browser}
    maximize browser window
    click button    id:openwindow
    switch window    new
    click button    id:closewindow
    switch window    main
    click button    id:openalert
    close browser

TC_003 Switch Window Alternative approach Using Window Handles
    [Documentation]    Index starts from 0 for get window handles
    open browser    ${URL_2}    ${Browser}
    maximize browser window
    click button    id:openwindow
    ${handles}=    get window handles
    switch window    ${handles}[1]
    click button    id:closewindow
    switch window    ${handles}[0]
    click button    id:openalert
    close browser

