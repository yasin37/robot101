*** Settings ***
Library    RequestsLibrary
#Library    JSONLibrary
#Library    Collections

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/
${STUDENT_ID}=  329942

*** Test Cases ***
TC_001 Check FirstName and LastName
    create session    fetchdata    ${BASE_URL}
    ${response}=    get on session    fetchdata    api/studentsDetails/${STUDENT_ID}
    should be equal as strings    ${response.status_code}    200
    should be equal as strings    Gillian    ${response.json()}[data][first_name]
    should be equal as strings    Marvy    ${response.json()}[data][last_name]
    # log to console     ${response.content}
    # log to console    ${response.json()}[data][first_name]
    # log to console    ${response.json()}[data][last_name]

