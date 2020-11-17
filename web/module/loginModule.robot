*** Setting ***
Resource                ../resources/importer.robot

*** Keywords ***
Then Login With Existing Users
    [Arguments]                                 ${email}=${email_user}                     ${password}=${password_user}
    loginPageTaniHub.Input Email and Password          ${email}             ${password}
    loginPageTaniHub.Click Masuk Button
    # taniHubHomepage.Then Verify User Already Logged    