*** Settings ***
Documentation   This is automation test for AMAZON web site

Resource        ../Resources/WEB/Common.robot
Resource        ../Resources/WEB/PO/SearchItems.robot

Test Setup      Start Web Test
Test Teardown   End Web Test


*** Test Cases ***
Verify user is able to search for items from top seaarch bar
    [Documentation]                                                 This test case verify that any user is able to view the Amazon Search
    [Tags]                                                          TC_SB_001   Regression   Search
    Page Load By Global User
    Enter search keywords on top search bar                         ferrari f1
    Verify search result is displayed on the screen                 F1

Verify user is able to filter search result by brand
    [Documentation]                                                 This test case verify that any user is able to view the Amazon Search
    [Tags]                                                          TC_SB_002   Regression   Search
    Page Load By Global User
    Enter search keywords on top search bar                         ferrari f1
    Select Featured Brand                                           Ferrari
    Verify search result is displayed on the screen                 Ferrari

Verify user is able to filter searched items by price range 0 - 10 EUR
    [Documentation]                                                 This test case verify that any user is able to view the Amazon Search
    [Tags]                                                          TC_SB_003   Regression   Search
    Page Load By Global User
    Enter search keywords on top search bar                         ferrari f1
    Select a Price Range from the List                              0 - 10 EUR
    Verify that the displayed items are within the price range      0   10

Verify user is able to filter searched items by price range 10 - 20 EUR
    [Documentation]                                                 This test case verify that any user is able to view the Amazon Search
    [Tags]                                                          TC_SB_004   Regression   Search
    Page Load By Global User
    Enter search keywords on top search bar                         ferrari f1
    Select a Price Range from the List                              10 - 20 EUR
    Verify that the displayed items are within the price range      10  20

Verify user is able to filter searched items by price range 50 - 100 EUR
    [Documentation]                                                 This test case verify that any user is able to view the Amazon Search
    [Tags]                                                          TC_SB_005   Regression   Search
    Page Load By Global User
    Enter search keywords on top search bar                         ferrari f1
    Select a Price Range from the List                              50 - 100 EUR
    Verify that the displayed items are within the price range      50  100