*** Settings ***
Library    Browser

*** Variables ***
${URL}                  https://www.saucedemo.com/
${login_name}           [id="user-name"]
${password}             [placeholder="Password"]
${login_button}         [data-test="login-button"]
${menu_button}          [id="react-burger-menu-btn"]
${první_item_web}       [data-test="add-to-cart-sauce-labs-backpack"]
${druhý_item_web}       [data-test="add-to-cart-sauce-labs-bike-light"]
${košík_button}         css=.shopping_cart_link
${checkout_button}      [data-test="checkout"]
${křestní_jméno}        [placeholder="First Name"]
${příjmení}             [name="lastName"]
${PSČ}                  [placeholder="Zip/Postal Code"]
${pokračovat_button}    [id="continue"]
${dokončit_button}      css=.btn.btn_action.btn_medium.cart_button
${text_na_konci}        [data-test="complete-header"]

*** Test Cases ***
Otevření Nové Stránky A Přihlášení se
    Open Browser               ${URL}                     chromium
    Set Viewport Size          width=1000                 height=800
    Fill Text                  ${login_name}              standard_user
    Fill Text                  ${password}                secret_sauce
    Click                      ${login_button}
    Wait For Elements State    selector=${menu_button}    state=visible    timeout=10
    Click                      ${první_item_web}
    Click                      ${druhý_item_web}
    Click                      ${košík_button}
    Click                      ${checkout_button}
    Fill Text                  ${křestní_jméno}           Dušan
    Fill Text                  ${příjmení}                Čižmarik
    Fill Text                  ${PSČ}                     123 45
    Click                      ${pokračovat_button}
    Click                      ${dokončit_button}
    ${text_pro_ověření}=       Get Text                   ${text_na_konci}
    Should Be Equal            ${text_pro_ověření}        Thank you for your order!