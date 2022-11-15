*** Settings ***
Library         SeleniumLibrary
Library         Collections

Resource        ../../Data/InputData.robot
Resource        ../../Data/ExpectedData.robot
Resource        ../../Data/ElementLocators.robot

*** Variables ***


*** Keywords ***
Start Web Test
    open browser                        about:blank                     ${BROWSER}
    maximize browser window

End Web Test
    close browser

Page Load By Global User
    go to                               ${URL.${ENVIRONMENT}}
    wait until page contains            ${HELLO_EXPECTED_TEXT}
    ${helloActualText} =                get text                        ${HELLO_ELEMENT}
    should be equal                     ${helloActualText}              ${HELLO_EXPECTED_TEXT}
    click button                        ${ACCEPT_COOKIES}
    sleep                               2s

Click Main Menu
    click link                          ${ALL_CATEGORY}
    wait until page contains            ${HELLO_EXPECTED_TEXT}
    sleep                               2s

Verify Main Menu Items
    Click Main Menu
    Compare Menu Items                  ${MENU_ITEMS}                   ${EXPECTED_MAIN_MENU_ITEMS}

Verify Sub Menu Items
    Click Main Menu
    Compare Menu Items                  ${SUB_MENU_ITEMS}               ${EXPECTED_SUB_MENU_ITEMS}

Verify Prime Video Sub Categories
    Click Main Menu
    click element                       ${PRIME_VIDEO}
    wait until page contains            prime video
    Compare Menu Items                  ${PRIME_VIDEO_SUB_CAT}          ${PRIME_VIDEO_SUB_MENU_ITEMS}

Verify Amazon Appstore Sub Categories
    Click Main Menu
    click element                       ${AMAZON_APPSTORE}
    wait until page contains            amazon appstore
    Compare Menu Items                  ${AMAZON_APPSTORE_SUB_CAT}      ${AMAZON_APPSTORE_SUB_MENU_ITEMS}

Verify Amazon Photos Sub Categories
    Click Main Menu
    click element                       ${AMAZON_PHOTOS}
    wait until page contains            amazon photos
    Compare Menu Items                  ${AMAZON_PHOTOSE_SUB_CAT}       ${AMAZON_PHOTOS_SUB_MENU_ITEMS}

Verify Films, Tv, Music & Games Sub Categories
    Click Main Menu
    click element                       ${AMAZON_FILM}
    wait until page contains            films, tv, music & games
    Compare Menu Items                  ${AMAZON_FILM_SUB_CAT}          ${AMAZON_FILM_SUB_MENU_ITEMS}

Verify Amazon Storefronts Sub Categories
    Click Main Menu
    click element                       ${AMAZON_STOREFONTS}
    wait until page contains            amazon storefronts
    Compare Menu Items                  ${AMAZON_STOREFONTS_SUB_CAT}    ${AMAZON_STOREFONTS_SUB_MENU_ITEMS}


Verify Amazon Business Categories
    Click Main Menu
    click element                       ${AMAZON_BUSINESS}
    wait until page contains            amazon business
    Compare Menu Items                  ${AMAZON_BUSINESS_SUB_CAT}      ${AMAZON_BUSINESS_SUB_MENU_ITEMS}

Compare Menu Items
    [Arguments]                         ${SUB_ELEMENT}                  ${SUB_MENU_ITEMS}
    ${actual_list} =                    create list
    ${element_count} =                  get element count               ${SUB_ELEMENT}
    FOR    ${i}    IN RANGE    1        ${element_count} + 1
        ${element_text} =               get text                        xpath=(${SUB_ELEMENT})[${i}]
        log                             ${element_text}
        Append To List                  ${actual_list}                  ${element_text}
    END
    log                                 ${actual_list}
    ${actual_sub_menu_list} =           convert to string               ${actual_list}
    should be equal                     ${actual_sub_menu_list}         ${SUB_MENU_ITEMS}