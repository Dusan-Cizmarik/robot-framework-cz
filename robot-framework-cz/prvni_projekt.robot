*** Settings ***
Library    Browser

*** Variables ***
${URL}             https://www.saucedemo.com/
${login_name}      [id="user-name"]
${password}        [placeholder="Password"]
${login_button}    [data-test="login-button"]

*** Test Cases ***

Otevření Nové Stránky A Přihlášení se
    Open Browser     ${URL}            chromium
    Fill Text        ${login_name}     standard_user
    Fill Text        ${password}       secret_sauce
    Click            ${login_button}