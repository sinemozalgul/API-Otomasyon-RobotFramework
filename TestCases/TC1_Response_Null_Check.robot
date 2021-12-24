*** Settings ***
Library  RequestsLibrary
Library  json
Library  JsonLibrary
Library  Collections


*** Variables ***
${base_url}  https://gorest.co.in
${end_point}  /public/v1/users


*** Test Cases ***
 Response Null Check

    Create Session    Get_Users    ${base_url}
    ${resp}=   Get Request    Get_Users    ${end_point}
    log    ${resp.json()} != null

