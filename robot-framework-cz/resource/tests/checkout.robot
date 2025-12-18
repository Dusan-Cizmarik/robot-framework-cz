*** Settings ***
Resource    ../common.resource
*** Variables ***

*** Test Cases ***
Complete Shopping Flow
    [Tags]    test    positive
    ${random_user_name}=    FakerLibrary.First Name
    ${random_last_name}=    Last Name
    ${random_postal_code}=    Postcode
    Nastavit a Otevřít Prohlížeč    ${URL}    chromium    1000    800
    Přihlásit Se Jako Uživatel Který Klikne    standard_user    secret_sauce
    Ověření Přihlášení
    Vložení Itemů Do Košíku
    Přejít Do Košíku A Dokončit Objednávku        
    Vyplní Jméno Příjmení a PSČ v Košíku    jméno_uživatele=${random_user_name}   příjmení_uživatele=${random_last_name}    psč_uživatele=${random_postal_code}
    Klikne Na Pokračovat V Košíku a Dokončí Objednávku
    Ověření Dokončení Objednávky


