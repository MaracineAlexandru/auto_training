*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${playstationButton}       css:#emg-body-overlay > div.main-container-inner > div.emg-container > div > div.emg-clear.main-page-container > aside > ul > li:nth-child(2) > a
*** Keywords ***

 Select playstation button
    Wait Until Page Contains Element    ${playstationButton} 
    Click Element    ${playstationButton}  
