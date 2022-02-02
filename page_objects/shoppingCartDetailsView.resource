*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${firstElementInList}      css:.card-v2-info
${firstElementInCart}      css:#vendorsContainer > div > div.cart-widget.cart-line > div > div.main-product-details-container.emg-right > div.line-item.line-item-main > div.main-product-title-container.emg-left > a


*** Keywords ***
Verify the correct product is in the shopping cart
    [Arguments]  ${firstProduct}
    ${nameOfItemInCart} =  Get Text  ${firstElementInCart}
    Should Be Equal    ${firstProduct}    ${nameOfItemInCart}     