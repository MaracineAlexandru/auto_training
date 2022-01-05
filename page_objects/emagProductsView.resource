*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${productGamingDropdown}   //span[text()='Gaming, Carti & Birotica']
*** Keywords ***
Select gaming from the products dropdown
    Wait Until Page Contains Element    ${productGamingDropdown} 
    Click Element    ${productGamingDropdown}    