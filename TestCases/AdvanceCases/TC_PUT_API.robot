*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}=    https://reqres.in

*** Test Cases ***
TC 0001 PUT API
    ${body}=    create dictionary    name=morpheus    job=Engineer

    ${response}=    PUT    ${BASE_URL}/api/users/2  data=${body}    expected_status=200
    log to console    ${response.content}
    # should be equal as strings    ${response.status_code}    200
    should be equal as strings    ${response.json()}[job]    Engineer
    should not be empty    ${response.json()}[updatedAt]



