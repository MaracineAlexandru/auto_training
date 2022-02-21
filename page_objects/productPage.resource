*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

*** Variables ***
${productPageTemplate}     //a[contains(.,'productPage')]
${scrollingPixels}         250

*** Keywords ***

Navigate to '${productPage:Gaming, Carti & Birotica|Console Playstation|Playstation}'
    ${productPageLabel}=   Replace String    ${productPageTemplate}    productPage    ${productPage}
    Wait Until Element Is Enabled    ${productPageLabel}
    Click Element    ${productPageLabel}

Adjust scrolling
    Execute JavaScript    window.scrollTo(0, ${scrollingPixels})    
    
 