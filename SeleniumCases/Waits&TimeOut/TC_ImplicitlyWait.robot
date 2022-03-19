*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings/
${Browser}    chrome

*** Test Cases ***
TC_0001 TimeOut
    [Documentation]
    ...    Default Implicity Wait time is 0 second. Implicit wait specifies the maximum time how long Selenium waits when searching for elements.
    ...    "set selenium implicit wait" gets the implicit wait value used by Selenium
    ...    "get selenium implicit wait" gets the implicit wait value used by Selenium
    ...    "set browser implicit wait" same as set selenium implicit wait but only affects the current browser
    ...     Implicitly wait tells the webdriver maximum wait time when searching for elements before throwing "No such element Exception"
    ...     Implicit wait is global. It is applicable to all the web elements in script
    ...     Since implicitly wait applies to all weblements you do not specify "ExpectedConditions" on the element to be located

    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    set selenium implicit wait    20 seconds
    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    input text    name:fld_username    Yasin
    input text    name:fld_email    yasinyazkan@test.com
    input text    name:fld_password    tatAa123!
    close browser
