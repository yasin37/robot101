*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://www.thetestingworldapi.com/

*** Test Cases ***
TC_001 Get Request
    [Tags]    Smoke    Regression
    Create Session   Get_Student_Details    ${BASE_URL}
    ${response} =   get on session    Get_Student_Details  api/studentsDetails
    log to console    ${response.status_code}
    #log to console    ${response.content}


