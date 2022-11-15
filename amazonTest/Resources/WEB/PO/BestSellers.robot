*** Settings ***
Library         SeleniumLibrary
Library         Collections

Resource        ../../../Data/ElementLocators.robot
Resource        ../../../Resources/WEB/Common.robot

*** Keywords ***

Navigate to best sellers
    click link                      Best Sellers
    wait until page contains        Best Sellers
    sleep                           2s

Verify six items displayed on Best Sellers in Sports & Outdoors category
    Scroll Element Into View        ${BS_SPORTS}
    Get the count and compare       ${BS_SPORTS}

Verify six items displayed on Best Sellers in Automotive category
    Execute JavaScript              window.scrollTo(0,1600)
    Get the count and compare       ${BS_AUTOMOTIVE}

Verify six items displayed on Best Sellers in Home & Kitchen category
    Execute JavaScript              window.scrollTo(0,1600)
    Get the count and compare       ${BS_HOME}

Verify six items displayed on Best Sellers in CDs & Vinyl category
    Execute JavaScript              window.scrollTo(0,600)
    Get the count and compare       ${BS_CD}

Verify six items displayed on Best Sellers in Handmade Products category
    Execute JavaScript              window.scrollTo(0,600)
    Get the count and compare       ${BS_HANDMADE}

Verify six items displayed on Best Sellers in Luggage category
    Execute JavaScript              window.scrollTo(0,1200)
    Get the count and compare       ${BS_LUGGAGE}

Get the count and compare
    [Arguments]                     ${ELEMENT}
    ${element_count} =              get element count       ${ELEMENT}/ol/li
    ${count} =                      convert to string       ${element_count}
    should be equal                 ${count}                6

Verify Best Seller Any Department Sub Catergories
    Compare Menu Items              ${ANY_DEPARTMENT}       ${BEST_SELLER_ANY_DEPARTMENT}
