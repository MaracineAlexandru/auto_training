*** Settings ***
Resource     ../page_objects/homePage.resource
Resource     ../page_objects/listingPanelView.resource
Resource     ../page_objects/shoppingCartpreview.resource
Resource     ../page_objects/shoppingCartDetailsView.resource
Resource     ../page_objects/productTypes.resource
Library     ../python_lib/custom_keywords.py
Library    SeleniumLibrary
Library    Process

*** Variables ***
${emagUrl}                 https://www.emag.ro/
${browser}                 chrome 


*** Test Cases ***
Basic functionality test 
    Open Site  ${emagUrl}  ${browser}
    Accept cookies
    Navigate to 'Gaming, Carti & Birotica'
    Navigate to 'Playstation'
    Navigate to 'Console Playstation'
    Select 'Cele mai noi' sort option from dropdown  
    Adjust scrolling
     ${firstProduct}=  Get first product in list and add it to the shopping cart 
    Navigate to shopping cart details 
    Verify shopping cart is not empty  
    Verify the correct product is in the shopping cart   ${firstProduct}
    [Teardown]    Close Browser

