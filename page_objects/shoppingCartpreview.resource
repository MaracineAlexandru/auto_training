*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${shoppingCartButton}      //a[contains(.,'Vezi detalii cos')]
${cartIsNotEmpty}          //h4[contains(.,'Produsul a fost adaugat in cos')]


*** Keywords ***
Verify shopping cart is not empty
    Wait Until Element Is Visible    ${cartIsNotEmpty} 
Navigate to shopping cart details
    Click Element    ${shoppingCartButton}   
