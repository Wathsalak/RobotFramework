*** Settings ***
Documentation   This is automation test for AMAZON web site

Resource        ../Resources/WEB/Common.robot

Test Setup      Start Web Test
Test Teardown   End Web Test


*** Test Cases ***
Verify user is able to naviage to the Amazon main page
    [Documentation]                     This test case verify that any user is able to view the Amazon main page
    [Tags]                              TC_MP_001      Regression   MainPage
    Page Load By Global User
    Click Main Menu

Verify user is able to click on Main Menu
    [Documentation]                     This test case verify that any user is able to open the Amazon main menu
    [Tags]                              TC_MP_002      Regression   MainPage
    Page Load By Global User
    Click Main Menu

Verify user is able to see Main Menu Items
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_003      Regression   MainPage
    Page Load By Global User
    Verify Main Menu Items

Verify sub menu items of
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_004      Regression   MainPage
    Page Load By Global User
    Verify Sub Menu Items

Verify sub menu items of Prime Video category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_005      Regression   MainPage
    Page Load By Global User
    Verify Prime Video Sub Categories

Verify sub menu items of Amazon Appstore category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_006      Regression   MainPage
    Page Load By Global User
    Verify Amazon Appstore Sub Categories

Verify sub menu items of Amazon Photos category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_007      Regression   MainPage
    Page Load By Global User
    Verify Amazon Photos Sub Categories

Verify sub menu items of Films, Tv, Music & Games category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_008      Regression   MainPage
    Page Load By Global User
    Verify Films, Tv, Music & Games Sub Categories

Verify sub menu items of Storefonts category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_009      Regression   MainPage
    Page Load By Global User
    Verify Amazon Storefronts Sub Categories

Verify sub menu Amazon Business category
    [Documentation]                     This test case verify that any user is able to see the Amazon main items
    [Tags]                              TC_MP_010      Regression   MainPage
    Page Load By Global User
    Verify Amazon Business Categories

