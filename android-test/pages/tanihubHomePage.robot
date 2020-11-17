*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***
Given User on Tanihub App for the first time
  Open Application      http://127.0.0.1:4723/wd/hub               deviceName=${DEVICE_NAME}
  ...                   platformName=${PLATFORM_NAME}              noReset=true        
  ...                   appPackage=${TANIHUB_APP_PACKAGE}          appActivity=${TANIHUB_APP_ACTIVITY}

When User press Explore Sekarang button
  Wait Until Page Contains Element          xpath=//android.widget.TextView[@text="Explore Sekarang"]
  Click Element                             xpath=//android.widget.TextView[@text="Explore Sekarang"]

And User select Jabodetabek area
  Wait Until Page Contains Element          xpath=//android.widget.TextView[@text="Jabodetabek"]
  Click Element                             xpath=//android.widget.TextView[@text="Jabodetabek"]

Then Area Pengiriman should be Jabodetabek
  Wait Until Page Does Not Contain          xpath=//android.widget.TextView[@text="Lihat area pengiriman"]
  Wait Until Page Contains Element          xpath=//android.widget.TextView[@text="Jabodetabek"]
  Element Should Be Visible                 xpath=//android.widget.TextView[@text="Jabodetabek"]

Given User on Tanihub Home Screen
  Wait Until Page Contains Element          xpath=//android.widget.TextView[contains(@text, "Cari buah")]          
  Element Should Be Visible                 xpath=//android.widget.TextView[contains(@text, "Cari buah")]  

When User search product on Search Box
  [Arguments]                               ${searchValue}
  Click Element                             xpath=//android.widget.TextView[contains(@text, "Cari buah")]
  Wait Until Page Contains Element          xpath=//android.widget.EditText[contains(@text, "Cari buah")]  
  Input Text                                xpath=//android.widget.EditText[contains(@text, "Cari buah")]      ${searchValue}
  Sleep                                     2s
  Press Keycode                             66          # Press Enter to Search
