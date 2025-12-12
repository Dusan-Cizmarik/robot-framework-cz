*** Settings ***
Resource    ../common.resource

*** Keywords ***

Otevřít Prohlížeč A Nasatavit Okno
    [Documentation]    Otevření prohlížeče a nastavení velikosti okna
    [Arguments]    ${url_stránky}    ${browser}    ${šířka}    ${výška}
    Open Browser   ${url_stránky}             ${browser}
    Set Viewport Size    width=${šířka}    height=${výška}

Přihlásit Se Jako Uživatel
    [Documentation]    Přihlášení pomocí standardního uživatele
    [Arguments]    ${přihlašovací_jméno}    ${přihlašovací_heslo}
    Fill Text    ${login_name}         ${přihlašovací_jméno}
    Fill Text    ${password}           ${přihlašovací_heslo}
    Click        ${login_button}

Ověření Přihlášení
    [Documentation]    Ověření, že uživatel je přihlášen
    Wait For Elements State    selector=${menu_button}    state=visible    timeout=${TIMEOUT}