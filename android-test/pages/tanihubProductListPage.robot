*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***
Then product should be visible on the list
  [Arguments]                               ${searchValue}
  Wait Until Page Contains Element          xpath=//android.widget.TextView[contains(@text, "hasil")]
  Element Should Be Visible                 xpath=//android.widget.TextView[contains(@text, "hasil")]
  Element Should Be Visible                 xpath=//android.widget.TextView[@text="${searchValue}"]
  Close Application