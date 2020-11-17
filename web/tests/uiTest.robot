*** Setting ***
Resource                ../resources/importer.robot
Test Setup              Open Web Applications               ${base_url_tanihub}  
Suite Setup             Run Keywords
Test Teardown           Close Browser Applications

*** Test Case ***
Checkout Product at TaniHub
    [Documentation]                 This test to login, search, select, add to cart and checkout product at Tanihub
    [Tags]                          web-tanihub
    Given Pop Up Pengiriman
    Set Selenium Speed                          0.5
    When User Select Area
    And User Hit User Profile
    Then Login With Existing Users
    Set Selenium Speed                          0.5
    Given Search Box to Search Product          Minyak Goreng Rose Brand 2 L Karton
    When User Find Product
    Then User Add to Cart
    And User Checkout the Product

    