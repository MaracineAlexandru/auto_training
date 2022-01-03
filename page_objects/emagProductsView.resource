*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${productGamingDropdown}   css:body > div.main-container-outer > div.megamenu-container.megamenu-always-open > div > div.megamenu-list-container > ul > li:nth-child(6) > a

*** Keywords ***
Select gaming from the products dropdown
    Wait Until Page Contains Element    ${productGamingDropdown} 
    Click Element    ${productGamingDropdown}    