*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${sortdropdown}              //span[text()='Cele mai populare']
${sortByLatestLabel}         css:.dropdown-menu li:nth-child(2)
*** Keywords ***

Select sorting dropdown 
    Wait Until Page Contains Element    ${sortdropdown}  
    Click Element    ${sortdropdown} 

Select sort by latest products 
    Wait Until Page Contains Element    ${sortByLatestLabel}   
    Click Element    ${sortByLatestLabel}  