*** Settings ***
Library    Browser
Library    FakerLibrary
Resource    global_variable.resource
Resource    locators/login_locators.resource
Resource    page/login_page.resource
Resource    workflow/login.resource
Resource    locators/main_locators.resource
Resource    locators/kosik_locators.resource
Resource    page/main_page.resource
Resource    page/kosik_page.resource


*** Keywords ***

Kliknutí
    [Documentation]    klikne na element a custom error message
    [Arguments]    ${selector}    ${context_name}=${EMPTY}
    TRY
        Click    ${selector}
    EXCEPT    AS    ${err}
        Fail    SLEHÁNÍ: '${context_name}' | selecotr='${selector}' | ${err}
    END

Vyplnění Text Field
    [Documentation]    Vyplní text s error message
    [Arguments]    ${selector}    ${text}    ${context_name}=${EMPTY}
    TRY
        Fill Text    ${selector}    ${text}
    EXCEPT    AS    ${err}
        Fail    SLEHÁNÍ: '${context_name}' | selecotr='${selector}' | ${err}
    END

Ověření Přítomnosti Na Stránce
    [Documentation]    Ověří zda je element přítomen na stránce
    [Arguments]    ${selector}    ${context_name}=${EMPTY}
    TRY
        Wait For Elements State    ${selector}    
    EXCEPT    AS    ${err}
        Fail    SLEHÁNÍ: '${context_name}' | selecotr='${selector}' | ${err}
    END

Nastavit a Otevřít Prohlížeč
    [Documentation]    Incilizuji prohlížeč a jeho seesion
    [Arguments]    ${url_stránky}    ${browser}    ${šířka}    ${výška}
    Open Browser   ${url_stránky}             ${browser}    pause_on_failure=No
    Set Viewport Size    width=${šířka}    height=${výška}
