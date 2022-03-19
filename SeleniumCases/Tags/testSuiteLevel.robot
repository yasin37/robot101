*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/BasicKeywords.robot
Documentation    In short, a test setup is something that is executed before each test case, and a test teardown is executed after each test case.
...    A suite setup is executed one time before running any of the suite's test cases or child test suites, and a test teardown is executed one time after them. All test suites can have a setup and a teardown;
...    Defalt Tags will work only if you do not apply any tag to particular test cases
...    Force Tags will work for all test cases. Does not matter test case have tags or not
Test Setup    Customized Start Browser and Maximize
Test Teardown    Customized Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite
Default Tags    DFLT
Force Tags    All_TC

*** Variables ***
${My_URL}    https://thetestingworld.com/testings
${My_Browser}    chrome

*** Test Cases ***
TC_001 Robot First Test Case
    [Tags]    T2T    Smoke
    input text    name:fld_username    Yasin
    input text    name:fld_email    test@test.com
    input text    name:fld_password    123456
    input text    name:fld_cpassword    123456

TC_002 Radio Button Address Type
    [Tags]    Regression
    [Documentation]
    ...    Sets the radio button group group_name to value
    ...    The radio button to be selected is located by two arguments
    ...    --> group_name is the name of the radio button group.
    ...    --> value is the id or value attribute of the actual radio button.
    select radio button   add_type    office

TC_003 Robot Third Test Case
    input text    name:fld_username    Yazkan
    input text    name:fld_email    hw@hw.com
    input text    name:fld_password    7777
    input text    name:fld_cpassword    7777

