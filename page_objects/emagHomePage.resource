*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${emagUrl}                 https://www.emag.ro/
${browser}                 chrome 
${acceptCookiesBtn}        css:body > div.gdpr-cookie-banner.js-gdpr-cookie-banner.pad-sep-xs.pad-hrz-none.show > div > div.col-xs-12.col-sm-5.col-md-4.col-lg-3.cookie-banner-buttons > button.btn.btn-primary.js-accept.gtm_h76e8zjgoo.btn-block
${productsTab}             css:.navbar-aux-content__departments

*** Keywords ***

Open Emag 
  Open Browser    url=${emagUrl}  browser=${browser}
  Maximize Browser Window

Accept cookies
    Wait Until Element Is Visible    ${acceptCookiesBtn}
    Click Element    ${acceptCookiesBtn}  

 Select product tab
    Wait Until Page Contains Element    ${productsTab} 
    Click Element    ${productsTab}  
  