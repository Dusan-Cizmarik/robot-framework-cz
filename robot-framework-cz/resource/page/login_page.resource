*** Settings ***
Resource    ../common.resource

*** Keywords ***

Ověření Přihlášení
    [Documentation]    Ověření, že uživatel je přihlášen
    Ověření Přítomnosti Na Stránce   ${menu_button}    context_name=když se chtěl přihlásit jako user

Vyplní Email 
    [Documentation]    Vyplní email jako ${přihlašovací_jméno}
    [Arguments]    ${přihlašovací_jméno}
    Vyplnění Text Field     ${login_name}         ${přihlašovací_jméno}    context_name=Když jsem chtěl vpylnit email od ${přihlašovací_jméno}

Vyplní Heslo
    [Documentation]    Vyplní email jako ${přihlašovací_heslo}
    [Arguments]    ${přihlašovací_heslo}
    Vyplnění Text Field    ${password}           ${přihlašovací_heslo}    context_name=Když jsem chtěl vyplnit heslo jako ${přihlašovací_heslo}

Kliknutí Na Login Button
    [Documentation]    Kliknutí na login button 
    Kliknutí    ${login_button}    context_name=Když jsem chtěl kliknout na login     