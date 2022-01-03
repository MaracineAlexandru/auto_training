*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${productsTab}             css:auxiliary > div > div > ul:nth-child(1) > li > div
${topElementInSorting}     css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs > button > span.sort-control-btn-option.text-truncate 
${sortingByNewestText}     Cele mai noi
${productGamingDropdown}   css:body > div.main-container-outer > div.megamenu-container.megamenu-always-open > div > div.megamenu-list-container > ul > li:nth-child(6) > a
${playstationButton}       css:#emg-body-overlay > div.main-container-inner > div.emg-container > div > div.emg-clear.main-page-container > aside > ul > li:nth-child(2) > a
${consoleButton}                 css:#emg-body-overlay > div.main-container-inner > div.emg-container > div > div.emg-clear.main-page-container > aside > ul:nth-child(2) > li:nth-child(2) > a
${sortButton}              css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs > button > span.sort-control-btn-option.text-truncate
${sortByLatestLabel}            css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs.active > div > ul > li:nth-child(2) > a


*** Keywords ***

Search by 
    [Arguments]  ${element} 
    Wait Until Page Contains Element    ${element}
    Click Element    ${element}

Navigate through pages
    @{NavigationList} =  Create list  ${productGamingDropdown}  ${playstationButton}  ${consoleButton}  ${sortButton}  ${sortByLatestLabel} 
     FOR  ${element}  IN  @{NavigationList}
         Search by  ${element}
    END

Sorting changes From Popular to Latest 
    ${topElementInSortingText} =   Get Text  ${topElementInSorting} 
    Should Be Equal    ${topElementInSortingText}    ${sortingByNewestText}