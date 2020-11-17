*** Setting ***
Resource               ../resources/importer.robot

*** Keyword ***

WHen User Find Product
    Wait Until Element Is Visible           xpath=//p[contains(text(), "Rose Brand Minyak Goreng 2 L Karton")]

Then User Add to Cart
    Click Element                           xpath=/html/body/div/div/div[1]/div/div[2]/div/div[2]/div[2]/div[2]/div[5]/button
    Click Element                           xpath=//img[@src="/static/icons/cart.svg"]
    Wait Until Element Is Visible           xpath=//p[contains(text(), "Keranjang Belanja")]   