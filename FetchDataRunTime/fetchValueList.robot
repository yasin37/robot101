*** Settings ***
Library    SeleniumLibrary
Documentation    Fetch Value from List/Dropdown

*** Variables ***
${Browser}    Chrome
${URL}    https://thetestingworld.com/testings/


*** Test Cases ***
TC_001 Feth Data 2
    [Documentation]
    ...    Fetch Value from List/Dropdown with index and label
    ...    list all items in list
    open browser    ${URL}    ${Browser}
    maximize browser window
    select from list by index    name:sex    1
    ${indexValue}=    get selected list value    name:sex
    log    ${indexValue}
    ${text}=    get selected list label    name:sex
    log    ${text}
    ${allLabel}=    get list items    name:sex
    log    ${allLabel}


    select from list by label    name:country    Andorra
    ${newValue}=    get selected list label    name:country
    log     ${newValue}
    #close browser