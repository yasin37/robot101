*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 Robot First Test Case
    [Documentation]  Example for Rabio Button, CheckBox,Link and TextBox
    [Tags]    Sanity    Regression
    open browser    ${URL}    ${Browser}
    maximize browser window
    input text    name:fld_username    Jack Jones
    input text    xpath://input[@name='fld_email']    test@gmail.com
    select radio button    add_type    office
    clear element text    name:fld_username
    select checkbox    name:terms
    click link    xpath://a[contains(text(),'Read Detail')]
    #close browser
