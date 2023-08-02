*** Settings ***
Library  RequestsLibrary
Library    RequestsLibrary



*** Variables ***
${base_url}    https://reqres.in

#https://api.ipify.org?format=json
#https://api.publicapis.org
#https://reqres.in

*** Test Cases ***
Get_Request

    create session   mysession      ${base_url}
    ${endpoint} 	set variable    /api/users?page=1/
    ${response}=    get on session   mysession       ${endpoint}
    log to console  ${response.status_code}
    log to console  ${response.content}

#validations
    ${status_code}=  convert to string   ${response.status_code}
    should be equal  ${status_code}  200

    ${body}=    convert to string        ${response.content}
    should contain  ${body}     Emma
