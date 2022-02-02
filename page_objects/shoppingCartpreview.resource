*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${shoppingCartButton}      css:.modal-content .btn-primary
${productsInCart}          css:.main-product-title


*** Keywords ***
Verify shopping cart is not empty
   ${product_list} =  Get WebElements  ${productsInCart}
   FOR  ${product}  IN  ${product_list}
        ${productName} =  Get Text  ${product}
        Log To Console    ${productName}
   END
    ${productListLength} =  Get Length    ${product list}
    Should Be Equal As Numbers  ${productListLength}    1
Navigate to shopping cart details
    Wait Until Element Is Visible    ${shoppingCartButton}
    Click Element    ${shoppingCartButton}   
