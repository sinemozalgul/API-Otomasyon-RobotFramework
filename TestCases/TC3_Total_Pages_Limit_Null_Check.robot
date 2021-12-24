*** Settings ***
Library  RequestsLibrary
Library  json
Library  JsonLibrary
Library  Collections


*** Variables ***
${base_url}  https://gorest.co.in
${end_point}  /public/v1/users


*** Test Cases ***
Total,Pages,Limit Null Check

    Create Session    Get_Users    ${base_url}
    ${response}=   Get Request    Get_Users    ${end_point}
    ${json_object}=  To Json    ${response.content}
    Should Not Be Equal   ${json_object['meta']['pagination']['total']} and  ${json_object['meta']['pagination']['pages']} and ${json_object['meta']['pagination']['limit']}   null
