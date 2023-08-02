*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
  #  open browser    https://demo.nopcommerce.com/
    open browser    ${url}      ${browser}
    title should be    nopCommerce demo store
    sleep    10
    click link      My account
    sleep    10