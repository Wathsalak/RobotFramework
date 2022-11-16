
*** Variables ***
${HELLO_ELEMENT} =              id=nav-link-accountList-nav-line-1
${ACCEPT_COOKIES} =             id=sp-cc-accept
${ALL_CATEGORY} =               id=nav-hamburger-menu
${MENU_NAME} =                  id=hmenu-customer-name
${MENU_ITEMS} =                 //ul[@data-menu-id="1"]/li/div[@class="hmenu-item hmenu-title "]
${SUB_MENU_ITEMS} =             //div[text()="trending"]/../following-sibling::li/a
${PRIME_VIDEO} =                xpath=//div[text()="Prime Video"]
${PRIME_VIDEO_SUB_CAT} =        //div[text()="prime video"]/parent::li/following-sibling::li
${AMAZON_APPSTORE} =            xpath=//div[text()="Amazon Appstore"]
${AMAZON_APPSTORE_SUB_CAT} =    //div[text()="amazon appstore"]/parent::li/following-sibling::li
${AMAZON_PHOTOS} =              xpath=//div[text()="Amazon Photos"]
${AMAZON_PHOTOSE_SUB_CAT} =     //div[text()="amazon photos"]/parent::li/following-sibling::li
${AMAZON_FILM} =                xpath=//div[text()="Films, TV, Music & Games"]
${AMAZON_FILM_SUB_CAT} =        //div[text()="films, tv, music & games"]/parent::li/following-sibling::li

${AMAZON_STOREFONTS} =          xpath=//div[text()="Amazon Storefronts"]
${AMAZON_STOREFONTS_SUB_CAT} =  //div[text()="amazon storefronts"]/parent::li/following-sibling::li

${AMAZON_BUSINESS} =            xpath=//div[text()="Amazon Business"]
${AMAZON_BUSINESS_SUB_CAT} =    //div[text()="amazon business"]/parent::li/following-sibling::li
${BACK_TO_MAIN_MENU} =          xpath=(//div[text()="main menu"])[1]

${BS_SPORTS} =                  //div[@id="anonCarousel1"]
${BS_CD} =                      //div[@id="anonCarousel2"]
${BS_HANDMADE} =                //div[@id="anonCarousel3"]
${BS_LUGGAGE} =                 //div[@id="anonCarousel4"]
${BS_AUTOMOTIVE} =              //div[@id="anonCarousel5"]
${BS_HOME} =                    //div[@id="anonCarousel6"]

${ANY_DEPARTMENT} =             //div[@role="treeitem"]/a

${BEST_SELLER_TOP_ITEM} =       (//a[@tabindex="-1"])[2]
${BEST_SELLER_ITEM} =           (//a[@tabindex="-1"])[2]/following-sibling::a/span/div

${BEST_SELLER_TAG} =            //i[@class="a-icon a-icon-addon p13n-best-seller-badge"]

${ADD_TO_BASKET} =              (//input[@id="add-to-cart-button"])[1]
${ITEM_PRICE} =                 //div[@id="corePrice_feature_div"]/div/span/span[@class="a-offscreen"]
${SUB_TOTAL} =                  //span[@id="attach-accessory-cart-subtotal"]

${SEARCH_FIELD} =               //input[@id="twotabsearchtextbox"]
${SEARCH_ICON} =                //input[@id="nav-search-submit-button"]
${SEARCHED_ITEM} =              xpath=(//span[@class="a-size-base-plus a-color-base a-text-normal"])[1]
${SEARCHED_ITEM_PRICE} =        xpath=(//span[@class="a-price-whole"])[1]
${SEARCHED_ITEM_PRICE_LIST} =   (//span[@class="a-price-whole"])
