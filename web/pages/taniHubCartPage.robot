*** Setting ***
Resource               ../resources/importer.robot

*** Keyword ***

And User Checkout the Product
    Click Element                             xpath=//div/button[contains(text(),"Checkout")]
    Wait Until Element Is Visible             xpath=//div/h4[contains(text(), "Checkout")]
  