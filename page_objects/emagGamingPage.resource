*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${playstationTab}       //a[contains(.,'Playstation')]
*** Keywords ***

 Select playstation button
    Wait Until Page Contains Element    ${playstationTab} 
    Click Element    ${playstationTab}  
