*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${emagUrl}                 https://www.emag.ro/
${browser}                 chrome 
${acceptCookiesBtn}        css:.js-accept
${productsTab}             css:.navbar-aux-content__departments


*** Keywords ***

Open Emag 
  Open Browser    url=${emagUrl}  browser=${browser}
  Maximize Browser Window

Accept cookies
    Wait Until Keyword Succeeds      5x     10s      Click Element   ${acceptCookiesBtn}   

 Select product tab
    Wait Until Page Contains Element    ${productsTab} 
    Click Element    ${productsTab}  
  