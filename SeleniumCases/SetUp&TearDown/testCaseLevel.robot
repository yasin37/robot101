*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/BasicKeywords.robot
Documentation    Example for Test Case Level SetUp & TearDown


*** Variables ***
${My_URL}    https://thetestingworld.com/testings
${My_Browser}    chrome

*** Test Cases ***
TC_001 Robot First Test Case
    [Setup]    Customized Start Browser and Maximize
    [Teardown]    Customized Close Browser Window
    input text    name:fld_username    Yasin
    input text    name:fld_email    test@test.com
    input text    name:fld_password    123456
    input text    name:fld_cpassword    123456

TC_002 Radio Button Address Type
    [Setup]    customized start browser and maximize
    [Teardown]    customized close browser window
    [Documentation]
    ...    Sets the radio button group group_name to value
    ...    The radio button to be selected is located by two arguments
    ...    --> group_name is the name of the radio button group.
    ...    --> value is the id or value attribute of the actual radio button.
    select radio button   add_type    office
    sleep    2

