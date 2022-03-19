*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_0001 Enter Username, Email and Password
    [Documentation]    Keywords are used with Argument
    open browser    ${URL}    ${Browser}
    maximize browser window
    Enter Username Email Password  Jack Jones    hello@python.com    123456
    close browser


*** Keywords ***
Enter Username Email Password
    [Arguments]   ${username}    ${email}   ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password    ${password}
