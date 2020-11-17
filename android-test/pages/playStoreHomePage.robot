*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***
Given User on Play Store App
    Scan Existing Devices
    Open Application          http://127.0.0.1:4723/wd/hub              deviceName=${DEVICE_NAME}
    ...                       platformName=${PLATFORM_NAME}             noReset=true        
    ...                       appPackage=${PLAY_STORE_APP_PACKAGE}      appActivity=${PLAY_STORE_APP_ACTIVITY}

When User Search Tanihub Application
    Wait Until Page Contains Element          xpath=//android.widget.TextView[@text="Search for apps & games"]
    Click Element                             xpath=//android.widget.TextView[@text="Search for apps & games"]
    Input Text                                xpath=//android.widget.EditText[@text="Search for apps & games"]      Tanihub

And User Select Tanihub from the list
    Wait Until Page Contains Element          xpath=//android.widget.TextView[@text="TaniHub - Shop and Empower Local Farmers"]
    Click Element                             xpath=//android.widget.TextView[@text="TaniHub - Shop and Empower Local Farmers"]