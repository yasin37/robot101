*** Settings ***
Library    RequestsLibrary
Library    ../ReadContent/ReadJsonContent.py

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/


*** Keywords ***
Fetch and Validate Get Status Code
    [Documentation]    This is the first developed keyword
    [Arguments]    ${StudentID}    ${expectedStatusCode}
    [timeout]    .5s
    create session    FetchData    ${BASE_URL}ad
    ${Response}=    GET On Session    FetchData    api/studentsDetails/${StudentID}
    log to console    ${Response.status_code}
    # Type of Status Code is integer but type of 200 is string so check status code as string convert
    should be equal as strings  ${Response.status_code}    ${expectedStatusCode}

Fetch and Return Get Response
    [Arguments]    ${StudentID}
    create session    MySession    ${BASE_URL}
    ${response}=    GET On Session    MySession    api/studentsDetails/${StudentID}
    [Return]    ${response}

Fetch Request Content
    ${jsonbody}=    read request content
    [Return]    ${jsonbody}

Welcome User
    [Documentation]    Executing New Test Case
    log to console    This is starting of Test Case

End TestCase
    [Documentation]    TestCase Completed
    log to console    This is end of test case
