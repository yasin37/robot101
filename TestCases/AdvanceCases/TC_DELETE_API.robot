*** Settings ***
Library    RequestsLibrary


*** Variables ***
${BASE_URL}    https://reqres.in
${id}    2

*** Test Cases ***
TC Delete API
    ${response}=    DELETE    ${BASE_URL}/api/users/${id}
    status should be    204    ${response}
