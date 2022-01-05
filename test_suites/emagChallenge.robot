*** Settings ***
Resource     ../page_objects/consolePageProductsContainer.resource
Resource     ../page_objects/emagHomePage.resource
Resource     ../page_objects/emagProductsView.resource
Resource     ../page_objects/emagGamingPage.resource
Resource     ../page_objects/emagPlaystationPage.resource
Resource     ../page_objects/consolePageListingPanelView.resource
Resource     ../page_objects/shoppingCartpreview.resource
Resource     ../page_objects/shoppingCartDetailsView.resource
Library     ../python_lib/custom_keywords.py
Library    SeleniumLibrary
Library    Process

*** Variables ***
${scrollingPixels}         250

*** Test Cases ***
Basic functionality test 
    Open Emag 
    Accept cookies
    Select product tab
    Select gaming from the products dropdown
    Select playstation button
    Select console button
    Select sorting dropdown
    Select sort by latest products
    Execute JavaScript    window.scrollTo(0, ${scrollingPixels})
    Wait Until Keyword Succeeds    2x    2s   Verify sorting changes From Popular to Latest  
     ${firstProduct}=  Get first product in list and add it to the shopping cart 
    Verify shopping cart is not empty
    Navigate to shopping cart details   
    Verify the correct product is in the shopping cart   ${firstProduct}
    [Teardown]    Close Browser

