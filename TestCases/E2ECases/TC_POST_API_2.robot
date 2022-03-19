*** Settings ***
Library    RequestsLibrary
Force Tags    Hello

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/
${firstName}=    Turker
${middleName}=    Yasin
${lastName}=    Yazkan
${dateOfBirth}=    09/07/1988

*** Test Cases ***
TC_001 POST API TestingWorld

    ${body}=    create dictionary    id=1    first_name=${firstName}  middle_name=${middleName}  last_name=${lastName}    date_of_birth=${dateOfBirth}

    # This POST API does not have header
    # &{header}=    create dictionary    Content-Type=application/json

    ${response}=    POST    ${BASE_URL}api/studentsDetails    data=${body}   expected_status=201

    log to console    ${response.content}
    log to console    ${response.status_code}
    should be equal as strings    ${response.status_code}    201
    should be equal as strings    ${response.json()}[first_name]    ${firstName}
    should be equal as strings    ${response.json()}[middle_name]    ${middleName}
    should be equal as strings    ${response.json()}[last_name]    ${lastName}
    should be equal as strings    ${response.json()}[date_of_birth]    ${dateOfBirth}
    ${ID}=    convert to string    ${response.json()}[id]    # You need to convert the id (integer) to string
    log to console    ${ID}
    should not be empty    ID

    # should not be empty    ${response.json()}[id]
