*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${sortdropdown}              css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs > button > span.sort-control-btn-option.text-truncate
${sortByLatestLabel}            css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs.active > div > ul > li:nth-child(2) > a

*** Keywords ***

Select sorting dropdown 
    Wait Until Page Contains Element    ${sortdropdown}  
    Click Element    ${sortdropdown} 

Select sort by latest products 
    Wait Until Page Contains Element    ${sortByLatestLabel}   
    Click Element    ${sortByLatestLabel}  