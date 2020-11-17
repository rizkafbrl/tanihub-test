*** Settings ***
Resource                          ../resources/importer.robot
Suite Setup                       Run Keywords

*** Test Cases ***
Download Tanihub App from Play Store
  [Documentation]             This test for Download Tanihub from Play Store
  Given User on Play Store App
  When User Search Tanihub Application
    And User Select Tanihub from the list
    And User press Install button
  Then Tanihub App is on process of downloading
    And Tanihub App successfully downloaded

Select Jabodetabek Area on Tanihub App
  [Documentation]             This test for Select Jabodetabek Area on Tanihub
  Given User on Tanihub App for the first time
  When User press Explore Sekarang button
    And User select Jabodetabek area
  Then Area Pengiriman should be Jabodetabek

Search any product on Tanihub App
  [Documentation]             Search any product on Tanihub
  Given User on Tanihub Home Screen
  When User search product on Search Box          ${SEARCH_PRODUCT_VALUE}
  Then product should be visible on the list      ${SEARCH_PRODUCT_VALUE}
