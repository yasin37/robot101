*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com
${firstName}=    Turker
${middleName}=    Yasin
${NEW_middleName}=    Al Capone
${lastName}=    Yazkan
${dateOfBirth}=    09/07/1988
${msg_1}=    true
${msg_2}=    success

*** Test Cases ***
TC_001 POST, PUT and GET APIs on TestingWorld

    ${body}=    create dictionary    id=1    first_name=${firstName}  middle_name=${middleName}  last_name=${lastName}    date_of_birth=${dateOfBirth}

    # This POST and PUT APIs do not have header
    # &{header}=    create dictionary    Content-Type=application/json

    ${response}=    POST    ${BASE_URL}/api/studentsDetails    data=${body}   expected_status=201

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


    ${body_2}=    create dictionary    id=${ID}   first_name=${firstName}    middle_name=${NEW_middleName}    last_name=${lastName}    date_of_birth=${dateOfBirth}

    Update the API    ${ID}    ${body_2}

    Fetch Detail and Validate New Middle Name    ${ID}

    Delete API and Check Result    ${ID}


*** Keywords ***
Fetch Detail and Validate New Middle Name
    [Arguments]    ${StudentID}
    ${response_3}=    GET    ${BASE_URL}/api/studentsDetails/${StudentID}    expected_status=200
    log to console    ${response_3.status_code}
    log to console    ${response_3.content}
    should be equal as strings    ${response_3.json()}[data][middle_name]    ${NEW_middleName}


Delete API and Check Result
     [Arguments]    ${StudentID}
     ${response_delete}=    DELETE    ${BASE_URL}/api/studentsDetails/${StudentID}    expected_status=200
     log to console    ${response_delete.content}
     log to console    ${response_delete.status_code}
     should be equal as strings    ${response_delete.json()}[status]    ${msg_1}
     should contain    ${response_delete.json()}[msg]    ${msg_2}


Update the API
    [Arguments]    ${StudentID}    ${body_2}
    ${response_2}=    PUT    ${BASE_URL}/api/studentsDetails/${StudentID}    data=${body_2}    expected_status=200
    log to console    ${response_2.content}
    log to console    ${response_2.status_code}



