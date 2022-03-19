*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py

*** Variables ***
${BASE_URL}    https://thetestingworld.com/testings
${Browser_Type}    chrome

*** Keywords ***
Customized Start Browser and Maximize
    open browser    ${BASE_URL}    ${Browser_Type}
    maximize browser window

Customized Close Browser Window
    ${title}=    get title
    log    ${title}
    close browser

Before Each Test Suite
    log    Test Suite Starts

After Each Test Suite
    log    Test Suite Ends

Create folder at Runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${subfoldername}
    log    "Task is completed successfully"

Generate New Value
    [Arguments]    ${username}    ${password}
    ${newValue}=    concatenate_two_values    ${username}    ${password}
    log    ${newValue}


