*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    Collections

*** Keywords ***
Open URL in Chrome
    [Arguments]  ${url}