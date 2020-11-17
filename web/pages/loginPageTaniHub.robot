*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***
Input Email and Password
    [Arguments]                 ${email}               ${password}
    Input Text                  xpath=//input[@placeholder="Contoh: email@tanihub.com"]                ${email}
    Click Element               xpath=/html/body/div[3]/div/div/div[2]/form/button                  
    Input Text                  xpath=//input[@id="input-password-3"]                ${password}

Click Masuk Button
    Click Element               xpath=/html/body/div[3]/div/div/div[2]/form/button

