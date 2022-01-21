*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${sortdropdown}              xpath://*[@class='dropdown-menu']//*[text()='Cele mai populare']
${sortByLatestLabel}         css:.dropdown-menu li:nth-child(2)
${sortByLatestLabelText}     Cele mai noi
*** Keywords ***

Select sorting dropdown 
    [Arguments]  ${sortOption} 
    Wait Until Page Contains Element    ${dropdown}  
    Click Element    ${ddropdown} 

Select sort by latest products 
    Wait Until Page Contains Element    ${sortByLatestLabel}   
    ${latestText}=  Get Text    ${sortByLatestLabel}
    Should Be Equal    ${latestText}    ${sortByLatestLabelText}
    Click Element    ${sortByLatestLabel}  