*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/
${StudentID}=   329942

*** Test Cases ***
TC_001_Fetch_Student_Data_By_ID
    [Tags]    Smoke    Sanity
    create session    FetchData    ${BASE_URL}
    ${Response}=    GET On Session    FetchData    api/studentsDetails/${StudentID}
    log to console    ${Response.status_code}
    # Type of Status Code is integer but type of 200 is string so check status code as string convert
    should be equal as strings  ${Response.status_code}    200
