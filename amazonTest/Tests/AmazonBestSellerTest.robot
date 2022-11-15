*** Settings ***
Documentation   This is automation test for AMAZON web site

Resource        ../Resources/WEB/Common.robot
Resource        ../Resources/WEB/PO/BestSellers.robot

Test Setup      Start Web Test
Test Teardown   End Web Test


*** Test Cases ***
Verify user is able to naviage to the Amazon main page
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_001   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in Sports & Outdoors category

Verify user is able see best seller items for Automotive category
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_002   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in Automotive category

Verify user is able see best seller items for Home & Kitchen category
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_003   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in Home & Kitchen category

Verify user is able see best seller items for CDs & Vinyl category
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_004   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in CDs & Vinyl category

Verify user is able see best seller items for Handmade Products category
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_005   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in Handmade Products category

Verify user is able see best seller items for Luggage category
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_006   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify six items displayed on Best Sellers in Luggage category

Verify best seller any department sub categories
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_007   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Verify Best Seller Any Department Sub Catergories

Verfiy user is able to add Best Seller items to shopping cart
    [Documentation]                     This test case verify that any user is able to view the Amazon Best Seller page
    [Tags]                              TC_BS_008   Smoke   Regression  BestSellerPage
    Page Load By Global User
    Navigate to best sellers
    Select the best seller item from the list
    Verify the selected item name
    Verify the Best Seller Badge
    Click on Add to Basket Button

