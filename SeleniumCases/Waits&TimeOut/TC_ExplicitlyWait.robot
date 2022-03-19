*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    https://www.sugarcrm.com/au/request-demo/
${Browser}    chrome

*** Test Cases ***
TC_0001 TimeOut
    [Documentation]
    ...    "Wait Until Page Contains" Waits until text appears on the current page. Fails if timeout expires before the text appears.
    ...    "Wait Until Page Contains Element" Waits until the element locator appears on the current page. Fails if timeout expires before the element appears.
    ...    "Wait Until Page Does Not Contain" Waits until text disappears from the current page. Fails if timeout expires before the text disappears.
    ...    "Wait Until Page Does Not Contain Element" Waits until the element locator disappears from the current page. Fails if timeout expires before the element disappears.
    ...    "Wait Until Location Is" Waits until the current URL is expected. Fails if timeout expires before the location is.
    ...    "Wait Until Location Contains" Waits until the current URL contains expected. Fails if timeout expires before the location contains
    ...    "Wait Until Element Contains" Waits until the element locator contains text. Fails if timeout expires before the text appears
    ...    "Wait Until Element Is Enabled" Waits until the element locator is enabled. Element is considered enabled if it is not disabled nor read-only. Fails if timeout expires before the element is enabled.
    ...    "Wait Until Element Is Visible" Waits until the element locator is visible. Fails if timeout expires before the element is visible

    ...    Explicit wait tells the web driver to halt the execution until a particular condition is met or maximum time has passed
    ...    Explicit wait is applicable only to those webelements which are specified by user
    ...    Explicit wait requires expected conditions to be specified for elements like 'Wait Until Web Element is Enabled'

    open browser    ${BASE_URL}    ${Browser}
    maximize browser window
    scroll element into view    xpath://li[@id='menu-item-115']/a
    wait until page contains    2021 SugarCRM Inc. All Rights Reserved
    wait until page contains element    xpath://li[@id='menu-item-19419']/a
    wait until page does not contain element    xpath://li[@id='menu-item-19419']/abczzz
    wait until page does not contain    2021 SugarCRM Inc. All Rights ReservedZZZ
    wait until location is    https://www.sugarcrm.com/au/request-demo/
    wait until location is not    https://www.sugarcrm.com/au/request-demo/XYZ
    wait until location contains    au
    wait until location does not contain    aud
    wait until element contains    xpath://li[@id='menu-item-19419']/a    Deployment Options    7 seconds    HEY BRO DATA NOT FOUND
    wait until element is enabled    //li[@id='menu-item-19419']/a
    wait until element is visible    //li[@id='menu-item-19419']
    close browser
