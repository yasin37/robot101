*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 Robot First Test Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    Jack Jones
    input text    xpath://input[@name='fld_email']    test@gmail.com
    clear element text    name:fld_username
    close browser
