*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/FirstUserDefinedKeywords.robot
Resource    ../../Resources/BasicKeywords.robot
Documentation    This suite having test cases of ABC functionality

*** Variables ***
${My_URL}    https://thetestingworld.com/testings
${My_Browser}    chrome

*** Test Cases ***
TC_001 First Case
    [Documentation]    The test case is to check registration functionality of application
    [Timeout]    10s
    ${My_Title}=    Start Browser and Maximize    ${My_URL}    ${My_Browser}
    input text    name:fld_username    ${My_Title}
    log    ${My_Title}
    create folder at runtime    family    kind
    generate new value    Yasin    YAZKAN
    close browser


