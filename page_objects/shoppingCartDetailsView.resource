*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${firstProductInList}      css:.card-v2-info
${firstProductInCart}      css:.main-product-title

*** Keywords ***
Verify the correct product is in the shopping cart
    [Arguments]  ${firstProduct}
    ${nameOfProductInCart} =  Get Text  ${firstProductInCart}
    Should Be Equal    ${firstProduct}    ${nameOfProductInCart}     