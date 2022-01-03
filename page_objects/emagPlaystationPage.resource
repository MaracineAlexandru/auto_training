*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${consoleButton}                 css:#emg-body-overlay > div.main-container-inner > div.emg-container > div > div.emg-clear.main-page-container > aside > ul:nth-child(2) > li:nth-child(2) > a
*** Keywords ***

Select console button
    Wait Until Page Contains Element    ${consoleButton}   
    Click Element    ${consoleButton}    
