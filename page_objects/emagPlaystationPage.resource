*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${consoleTab}               //a[contains(.,'Console Playstation')]  
*** Keywords ***

Select console button
    Wait Until Page Contains Element    ${consoleTab}   
    Click Element    ${consoleTab}    
