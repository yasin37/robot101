*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}     https://thetestingworld.com
${BASE_URL_2}    https://thetestingworld.com/testings
${Browser}    chrome

*** Test Cases ***
TC_001 Page Should Contains
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    page should contain    VIDEOS
    page should not contain    VIDEOS123
    click link    Login
    close browser

TC_002 Page Should Contains Textfield && Validate Checkbox
    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    click link    Login
    page should contain textfield    name:username     # Verifies text field locator is found from current page.
    input text    name:username    AlCapone
    select checkbox    id:remember    # Selects the checkbox identified by locator. Does nothing if checkbox is already selected.
    checkbox should be selected    id:remember    #Verifies checkbox locator is selected/checked.
    unselect checkbox    name:remember    #click element    name:remember    (Alternative method)
    checkbox should not be selected    name:remember
    close browser

TC_003 Validate Text on Element
    [Documentation]
    ...    element text should be --> Verifies that element locator contains exact the text expected.
    ...    element should contain --> Verifies that element locator contains text expected.
    open browser    ${BASE_URL_2}    ${Browser}
    maximize browser window
    element text should be    xpath://div[@id='tab-content1']/p    Register now and kick start your career as a Software Testing Pro!
    input text    name:fld_username    AlCapone
    element should contain    //img[@src='images/logo.png']/following-sibling::span    Login Or Sign Up
    input text    name:fld_email    Carlos
    close browser

TC_004 Verify Title/Element Enable/Visible
    open browser    ${BASE_URL_2}    ${Browser}
    maximize browser window
    title should be     Login & Sign Up Forms    #Verifies that the current page title equals title.
    element should be enabled    name:fld_username    #This keyword considers also elements that are read-only to be disabled.
    input text    name:fld_username    Smith
    element should not be visible    name:_txtUserName    #Verifies that the element identified by locator is NOT visible.
    input text    name:fld_email    test@test.com
    close browser