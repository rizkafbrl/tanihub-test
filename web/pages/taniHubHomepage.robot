*** Setting ***
Resource               ../resources/importer.robot

*** Keyword ***

Given Pop Up Pengiriman
    Wait Until Element Is visible           xpath=//p[contains(text(), "Pilih Area Pengiriman")]          timeout= 5

When User Select Area
    Click Element                             xpath=//p[contains(text(), "Jabodetabek")]

And User Hit User Profile
    Click Element                           xpath=//button[@id="button-1"]              

And User Already Logged In
    Wait Until Element Is Visible           xpath=//p[contains(text(), "Belanja bahan masakan untuk rumah dan usaha Anda langsung dari petani kita."")]         timeout=5

Given Search Box to Search Product
    [Arguments]                             ${product}
    Input Text                              xpath=//input[@placeholder="Cari buah, sayur, beras..."]        ${product}
    Press Keys                              xpath=//input[@placeholder="Cari buah, sayur, beras..."]        RETURN

                                    