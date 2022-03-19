*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://www.facebook.com/

*** Test Cases ***
TC_001 Robot First Test Case
    [Documentation]    Facebook Login Example
    open browser    ${URL}    ${Browser}
    maximize browser window
    input text    id:email    yasinyazkan_37@hotmail.com
    input text    id:pass    gozlerin37
    click button    name:login
    #select radio button    add_type    office
    #clear element text    name:fld_username
    #select checkbox    name:terms
    #click link    xpath://a[contains(text(),'Read Detail')]
    #close browser
