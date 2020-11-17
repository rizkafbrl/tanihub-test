*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***
And User press Install button
    Wait Until Page Contains Element          xpath=//android.widget.Button[@text="Install"]
    Click Element                             xpath=//android.widget.Button[@text="Install"]

Then Tanihub App is on process of downloading
    Wait Until Page Contains Element          xpath=//android.widget.TextView[contains(@text, "%")]
    Element Should Be Visible                 xpath=//android.widget.TextView[contains(@text, "%")]

And Tanihub App successfully downloaded
    Wait Until Page Contains Element          xpath=//android.widget.TextView[contains(@text, "Installing")]          timeout=300
    Element Should Be Visible                 xpath=//android.widget.TextView[contains(@text, "Installing")]
    Sleep                                     5s
