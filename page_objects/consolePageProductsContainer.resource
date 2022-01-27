*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${addToCartButton}         css:.yeahIWantThisProduct
${cartButton}              //a[contains(.,'Vezi detalii cos')]
${cartIsNotEmpty}          //h4[contains(.,'Produsul a fost adaugat in cos')]
${firstElementInList}      css:#card_grid > div:nth-child(2) > div > div > div.card-v2-info > div > a
${firstElementInCart}      css:#vendorsContainer > div > div.cart-widget.cart-line > div > div.main-product-details-container.emg-right > div.line-item.line-item-main > div.main-product-title-container.emg-left > a


*** Keywords ***

Get first product in list and add it to the shopping cart  
    Click Element    ${addToCartButton}    
    ${firstItemName} =  Get Text    ${firstElementInList} 
   [Return]  ${firstItemName}