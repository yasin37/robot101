*** Settings ***
Library     RequestsLibrary
Resource    ../../Resources/UserKeyword.robot
Suite Setup    Welcome User
Suite Teardown    End TestCase

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/
${StudentID}=   329942
${Other_StudentID}=    329943
${expectedStatusCode}=    200

*** Test Cases ***
TC_001_Fetch_Student_Data_By_ID
    [Tags]    Sanity
    Fetch and Validate Get Status Code    ${StudentID}    ${expectedStatusCode}

TC_002 Fetch_Then_Return_Data_BasedOn_StudentID
    [Tags]    Smoke
    ${response}=    Fetch and Return Get Response    ${Other_StudentID}
    log to console      ${response.content}
