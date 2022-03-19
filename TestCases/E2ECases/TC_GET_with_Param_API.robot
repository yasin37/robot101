*** Settings ***
Library    RequestsLibrary
Documentation    This suite is an example for params usage on API
Test Timeout    .5s
Default Tags    Hello

*** Variables ***
${BASE_URL}    https://reqres.in

*** Test Cases ***
# https://reqres.in/api/users?page=2
TC_001 Validate Get Request with Parameters for first data
    ${response}=    GET    ${BASE_URL}/api/users    params=page=2    expected_status=200
    should be equal as strings    ${response.json()}[data][0][first_name]    Michael
    should be equal as strings    ${response.json()}[data][0][last_name]    Lawson

TC_002 Validate Get Request with Parameters for second data
    [Tags]    Sanity
    ${response}=    GET    ${BASE_URL}/api/users    params=page=2    expected_status=200
    should be equal as strings    ${response.json()}[data][1][first_name]    Lindsay
    should be equal as strings    ${response.json()}[data][1][last_name]    Ferguson
    should be equal as strings    ${response.json()}[data][1][email]    lindsay.ferguson@reqres.in
    should be equal as strings    ${response.json()}[data][1][avatar]    https://reqres.in/img/faces/8-image.jpg

    #should be equal as strings    ${response.status_code}    200
    #log to console    ${response.content}


