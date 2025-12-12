*** Settings ***
Resource    ../common.resource

*** Keywords ***

Vyplní Jméno Příjmení a PSČ v Košíku
    [Documentation]    Vyplní jméno, příjmení a PSČ v košíku
    [Arguments]    ${jméno_uživatele}    ${příjmení_uživatele}    ${psč_uživatele}
    Fill Text    ${křestní_jméno}    ${jméno_uživatele}
    Fill Text    ${příjmení}         ${příjmení_uživatele}
    Fill Text    ${PSČ}              ${psč_uživatele}

Klikne Na Pokračovat V Košíku a Dokončí Objednávku
    [Documentation]    Klikne na tlačítko pokračovat v košíku
    Click        ${pokračovat_button}
    Click        ${dokončit_button}

Ověření Dokončení Objednávky
    ${text_pro_ověření}=    Get Text    ${text_na_konci}
    Should Be Equal        ${text_pro_ověření}    Thank you for your order!