*** Settings ***
Library         SeleniumLibrary
Library         Collections

Resource        ../../../Data/ElementLocators.robot
Resource        ../../../Resources/WEB/Common.robot

*** Variables ***
${Index} =   0


*** Keywords ***
Enter search keywords on top search bar
    [Arguments]                     ${SEARCH_TEXT}
    input text                      ${SEARCH_FIELD}         ${SEARCH_TEXT}
    click element                   ${SEARCH_ICON}

Verify search result is displayed on the screen
    [Arguments]                     ${SEARCH_TEXT}
    wait until page contains        RESULTS
    ${text} =                       get text                ${SEARCHED_ITEM}
    should contain                  ${text}                 ${SEARCH_TEXT}

Select Featured Brand
    [Arguments]                     ${BRAND}
    click element                   //span[text()="${BRAND}"]

Select a Price Range from the List
    [Arguments]                     ${PRICE_RANGE}
    click element                   //span[text()="${PRICE_RANGE}"]

Verify that the displayed items are within the price range
    [Arguments]                     ${min}                  ${max}
    ${elementcount} =               get element count       ${SEARCHED_ITEM_PRICE_LIST}
    FOR    ${Index}     IN RANGE        ${elementcount}
        ${price} =                      get text                ${SEARCHED_ITEM_PRICE_LIST}\[${Index} + 1]
        ${price_range} =                convert to number       ${price}
        should be true                  ${min} < ${price_range} < ${max}
    END
