*** Settings ***
Resource    ../common.resource

*** Keywords ***
Vložení Itemů Do Košíku
    [Documentation]    Přidání dvou položek do košíku
    Click        ${první_item_web}
    Click        ${druhý_item_web}

Přejít Do Košíku A Dokončit Objednávku
    [Documentation]    Přejít do košíku, vyplní jméno, příjmení a PSČ zákazníka a dokončit objednávku
    Click        ${košík_button}
    Click        ${checkout_button}

    