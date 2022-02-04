*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

*** Variables ***
${dropdown}              xpath://*[text()='Ordoneaza dupa:']/parent::*/*[contains(@class,'btn-dropdown')]
${sortOptionTemplate}    xpath://*[@class='dropdown-menu']//*[text()='sort_option']
${addToCartButton}         css:.yeahIWantThisProduct
${firstElementInList}      css:.card-v2-title
${firstElementInCart}      css:.main-product-title
*** Keywords ***
Select '${sort_option:Cele mai populare|Cele mai noi|Pret crescator|Pret descrescator|Nr. review-uri|Discount %}' sort option from dropdown  
    Wait Until Page Contains Element    ${dropdown}  
    Click Element    ${dropdown} 
    ${dropdownLabel}=   Replace String    ${sortOptionTemplate}    sort_option    ${sort_option}

Get first product in list and add it to the shopping cart  
    Click Element    ${addToCartButton}    
    ${firstItemName} =  Get Text    ${firstElementInList} 
   [Return]  ${firstItemName}    