*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/BasicKeywords.robot
Documentation    In short, a test setup is something that is executed before each test case, and a test teardown is executed after each test case.
...    A suite setup is executed one time before running any of the suite's test cases or child test suites, and a test teardown is executed one time after them. All test suites can have a setup and a teardown;
Test Setup    Customized Start Browser and Maximize
Test Teardown    Customized Close Browser Window
Suite Setup    Before Each Test Suite
Suite Teardown    After Each Test Suite

*** Variables ***
${My_URL}    https://thetestingworld.com/testings
${My_Browser}    chrome

*** Test Cases ***
TC_001 Robot First Test Case
    input text    name:fld_username    Yasin
    input text    name:fld_email    test@test.com
    input text    name:fld_password    123456
    input text    name:fld_cpassword    123456

TC_002 Radio Button Address Type
    [Documentation]
    ...    Sets the radio button group group_name to value
    ...    The radio button to be selected is located by two arguments
    ...    --> group_name is the name of the radio button group.
    ...    --> value is the id or value attribute of the actual radio button.
    select radio button   add_type    office

