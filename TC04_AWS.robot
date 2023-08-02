*** Settings ***
Library    AWSLibrary

*** Variables ***
${browser}      chrome
${URL}          https://eu-west-2.console.aws.amazon.com/

*** Test Cases ***
AWS_Access
            create session with profile      eu-west-2