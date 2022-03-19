*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary    # It is used to validate JSON
Library    Collections    # It is used to fetch data from list

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com/
${StudentID}=   329942

*** Test Cases ***
TC_001_Fetch_Student_Data_And_Validate
    create session    FetchData    ${BASE_URL}
    ${Response}=    GET On Session    FetchData    api/studentsDetails/${StudentID}
    log to console  ${Response.status_code}
    should be equal as strings    ${Response.status_code}    200

    ${json_resp}=   to json    ${Response.content}    # Response retuns as String type from server so we need to convert response to JSON type to fetch its content


    @{first_name_list}=    get value from json    ${json_resp}    data.first_name    # Type of getting Value is list (you can check it on json.com) so we need to define first_name_list variable as List with using "@"
    ${first_name}=    get from list    ${first_name_list}    0    # To get 0 index of the list
    log to console    ${first_name}
    should be equal   ${first_name}    Gillian

    @{last_name_list}=    get value from json    ${json_resp}    data.last_name
    ${last_name}=    get from list    ${last_name_list}    0
    log to console   ${last_name}
    should be equal    ${last_name}    Marvy






