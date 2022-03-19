*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 Fetch Data 3
     [Documentation]
     ...    Fetch Element Attribute
     ...    Fetch Element Count
     ...    Fetch Location
     ...    Fetch Source
     open browser    ${URL}    ${Browser}
     maximize browser window
     ${actualURL}=    get location
     log    ${actualURL}
     ${pageHTML}=    get source
     log    ${pageHTML}
     ${attr}=    get element attribute    name:fld_username    class
     log    ${attr}
     ${count}=    get element count    class:field
     log    ${count}
     close browser

