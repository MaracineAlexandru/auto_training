*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${acceptCookiesBtn}        css:.js-accept


*** Keywords ***

Open Site 
  [Arguments]  ${url}  ${browser}
  Open Browser    url=${url}  browser=${browser}
  Maximize Browser Window

Accept cookies
    Wait Until Keyword Succeeds      5x     2s      Click Element   ${acceptCookiesBtn}   
