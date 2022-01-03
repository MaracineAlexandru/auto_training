*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${topElementInSorting}     css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs > button > span.sort-control-btn-option.text-truncate 
${sortingByNewestText}     Cele mai noi
${sortButton}              css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs > button > span.sort-control-btn-option.text-truncate
${sortByLatestLabel}       css:#main-container > section.page-section.page-listing-v2 > div > div.clearfix.pad-btm-md > div.page-container > div.listing-panel.has-floating-listing-panel-footer > div.listing-panel-footer.js-head-sort-options > div > div:nth-child(2) > div.sort-control-btn-dropdown.hidden-xs.active > div > ul > li:nth-child(2) > a
${addToCartButton}         css:#card_grid > div:nth-child(1) > div > div > div.card-v2-content > div.card-v2-atc.mrg-top-xxs > form > button
${cartButton}              css:body > div.ph-modal.modal.fade.product-purchased-modal.in > div > div > div.modal-body.modal-content-extra-padding.pad-sep-xs.hidden-xs > div > div.table-cell.col-xs-12.col-sm-2.col-md-2.hidden-xs.hidden-sm > a
${cartIsNotEmpty}          css:body > div.ph-modal.modal.fade.product-purchased-modal.in > div > div
${firstElementInList}      css:#card_grid > div:nth-child(1) > div > div > div.card-v2-info > div > a
${firstElementInCart}      css:#vendorsContainer > div > div.cart-widget.cart-line > div > div.main-product-details-container.emg-right > div.line-item.line-item-main > div.main-product-title-container.emg-left > a


*** Keywords ***
Verify sorting changes From Popular to Latest 
    ${topElementInSortingText} =   Get Text  ${topElementInSorting} 
    Should Be Equal    ${topElementInSortingText}    ${sortingByNewestText}

Get first product in list and add it to the shopping cart  
    Click Element    ${addToCartButton}    
    ${firstItemName} =  Get Text    ${firstElementInList} 
   [Return]  ${firstItemName}

Verify the correct product is in the shopping cart
    [Arguments]  ${firstProduct}
    Wait Until Element Is Visible    ${cartIsNotEmpty} 
    Click Element    ${cartButton}
    ${nameOfItemInCart} =  Get Text  ${firstElementInCart}
    Should Be Equal    ${firstProduct}    ${nameOfItemInCart}     