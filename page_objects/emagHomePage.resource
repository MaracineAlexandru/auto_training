*** Settings ***
Resource     ../utils/browser.resource
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${emagUrl}                 https://www.emag.ro/
${browser}                 chrome 

*** Keywords ***

Open Emag 
  Open Browser    url=${emagUrl}  browser=${browser}