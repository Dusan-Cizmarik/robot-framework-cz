*** Settings ***
Resource    ../common.resource

*** Keywords ***
Přihlásit Se Jako Uživatel Který Klikne
    [Documentation]    Přihlášení pomocí standardního uživatele
    [Arguments]    ${přihlašovací_jméno}    ${přihlašovací_heslo}
    Vyplní Email    ${přihlašovací_jméno}
    Vyplní Heslo    ${přihlašovací_heslo}
    Kliknutí Na Login Button