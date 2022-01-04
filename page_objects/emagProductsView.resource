*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${productGamingDropdown}   css:.megamenu-list li:nth-child(6)
*** Keywords ***
Select gaming from the products dropdown
    Wait Until Page Contains Element    ${productGamingDropdown} 
    Click Element    ${productGamingDropdown}    