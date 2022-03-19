*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC_0001 Variable and List
    [Documentation]    Variable stores one value but list stores multiple values of multiple data types on python
    @{MyList}    create list    Hello    37    55.81    World    XYZ123
    ${list_length}    get length    ${MyList}
    log to console    ${list_length}
    ${my_data}    get from list    ${MyList}    2
    log to console    ${my_data}