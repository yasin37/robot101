*** Settings ***
Library    RequestsLibrary
Resource    ../../Resources/UserKeyword.robot


*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com
${firstName}=    Bill
${middleName}=    Jack
${lastName}=    Smith
${dateOfBirth}=    01/01/1988

*** Test Cases ***
TC_001 Post API
    [Tags]    Regression
    ${body}=    Fetch Request Content
    ${response}=    POST    ${BASE_URL}/api/studentsDetails    data=${body}    expected_status=201
    log to console    ${response.content}
    log to console    ${response.status_code}
    should be equal as strings    ${response.status_code}    201
    should be equal as strings    ${response.json()}[first_name]    ${firstName}
    ${ID}=    convert to string    ${response.json()}[id]
    log to console    ${ID}
    should not be empty    ${ID}
