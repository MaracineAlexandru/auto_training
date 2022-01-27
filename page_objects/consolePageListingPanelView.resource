*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

*** Variables ***
${dropdown}              xpath://*[text()='Ordoneaza dupa:']/parent::*/*[contains(@class,'btn-dropdown')]
${sortOptionTemplate}    xpath://*[@class='dropdown-menu']//*[text()='sort_option']
*** Keywords ***
Select '${sort_option:Cele mai populare|Cele mai noi|Pret crescator|Pret descrescator|Nr. review-uri|Discount %}' sort option from dropdown  
    Wait Until Page Contains Element    ${dropdown}  
    Click Element    ${dropdown} 
    ${placeHolder}=   Replace String    ${sortOptionTemplate}    sort_option    ${sort_option}