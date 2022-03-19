*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC_001 Run Keyword
    [Documentation]    Store keyword to a variable then Run Keyword stored into variable
    ${Var_1}=    set variable    log to console
    run keyword    ${Var_1}    HelloWprld

TC_002 Run Keyword if
    [Documentation]    Conditionaly Execute Keyword
    ${Var_1}=    set variable    Yes
    run keyword if    '${Var_1}' == 'Yes'    log to console    Value Found
    run keyword if    '${Var_1}' != 'Yes'    log to console    Value NOT Found

TC_003 Exiting for loop
    ${text}=    set variable    ${EMPTY}
    LOG TO CONSOLE    ${text}
    FOR    ${var}    IN    one    two
        run keyword if    '${var}' == 'two'    exit for loop
        ${text}=    set variable    ${text}${var}
    END
    should be equal    ${text}    one

