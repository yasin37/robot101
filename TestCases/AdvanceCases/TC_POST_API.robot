*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}=    https://reqres.in

*** Test Cases ***
TC_001 POST API

    ${body}=    create dictionary    name=morpheus    job=leader    # key and values are stored in dictionary in Python

    ${response}=    POST    ${BASE_URL}/api/users    data=${body}    expected_status=201

    log to console    ${response.content}
    should be equal as strings    ${response.status_code}    201
    should be equal as strings    ${response.json()}[name]    morpheus
    should be equal as strings    ${response.json()}[job]    leader
    should not be empty    ${response.json()}[id]
    should not be empty    ${response.json()}[createdAt]