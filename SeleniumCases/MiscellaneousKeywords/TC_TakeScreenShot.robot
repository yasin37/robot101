*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_001 Take ScreenShot at Runtime
    [Documentation]    Takes a screenshot of the current page and embeds it into a log file.
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    Yasin
    input text    name:fld_email    test@test.com
    input text    name:fld_password    tatAa123!
    capture page screenshot    ../SnapShots/FirstSS.png
    close browser

