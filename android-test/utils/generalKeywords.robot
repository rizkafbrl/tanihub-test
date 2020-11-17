*** Variables ***
${timeout}              20

*** Keywords ***
Tap Element
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Click Element                       ${element}

Tap Button
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Click Button                        ${element}

Tap Text
    [Arguments]                         ${element}
    Wait Until Page Contains            ${element}          timeout=${timeout}
    Click Text                          ${element}

Type Text
    [Arguments]                         ${element}          ${text}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Input Text                          ${element}          ${text}

Type Value
    [Arguments]                         ${element}          ${text}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Input Value                         ${element}          ${text}

Type Password
    [Arguments]                         ${element}          ${text}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Input Password                      ${element}          ${text}

Verify Element Text Contain
    [Arguments]                         ${element}          ${text}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Element Should Contain Text         ${element}          ${text}

Verify Element Text
    [Arguments]                         ${element}          ${text}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Element Text Should Be              ${element}          ${text}

Verify Element Visible
    [Arguments]                         ${element}
    Wait Until Keyword Succeeds         20 sec          2 sec       Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Element Should Be Visible           ${element}

Verify Page Contain Element
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Page Should Contain Element         ${element}

Verify Page Contain Text
    [Arguments]                         ${element}
    Wait Until Page Contains            ${element}          timeout=${timeout}
    Page Should Contain Text            ${element}

Verify Element Text Should Be
    [Arguments]                         ${element}          ${expected}             ${message}=Text Is Not As Expected          ${ignore_case}=False
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Element Text Should Be              ${element}          ${expected}             ${message}

Verify Element Text Should Contain
    [Arguments]                         ${element}          ${expected}             ${message}=Text Is Not As Expected          ${ignore_case}=False
    Wait Until Element Is Visible       ${element}          timeout=${timeout}
    Element Should Contain Text         ${element}          ${expected}             ${message}

Verify Element Should Be Enabled
    [Arguments]                         ${element}
    Element Should Be Enabled           ${element}

Verify Element Should Be Disabled
    [Arguments]                         ${element}
    Element Should Be Disabled          ${element}
    
Swipe Up
    [Arguments]                                     ${element}
    ${element_size}=        Get Element Size        ${element}
    ${element_location}=    Get Element Location    ${element}
    ${start_x}=             Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=             Evaluate                ${element_location['y']} + (${element_size['height']} *0.7)
    ${end_x}=               Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=               Evaluate                ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe                   ${start_x}   ${start_y}   ${end_x}    ${end_y}    1000
    Sleep                   1 seconds

Swipe Down
    [Arguments]                                     ${element}
    ${element_size}=        Get Element Size        ${element}
    ${element_location}=    Get Element Location    ${element}
    ${start_x}=             Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=             Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=               Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=               Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe                   ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Up with Coordinate
    [Arguments]                                 ${x_first}   ${y_first}   ${x_end}   ${y_end}               ${element}
    ${element_size}=                            Get Element Size                                            ${element}
    ${element_location}=                        Get Element Location                                        ${element}
    ${start_x}=                                 Evaluate      ${element_location['x']} + (${element_size['width']} * ${x_first})
    ${start_y}=                                 Evaluate      ${element_location['y']} + (${element_size['height']} * ${y_first})
    ${end_x}=                                   Evaluate      ${element_location['x']} + (${element_size['width']} * ${x_end})
    ${end_y}=                                   Evaluate      ${element_location['y']} + (${element_size['height']} * ${y_end})
    Swipe                                       ${start_x}    ${start_y}  ${end_x}  ${end_y}  750
    Sleep  1

Swipe Left to Right
    [Arguments]                                     ${element}
    Wait Until Element Is Visible                   ${element}
    ${element_size}=        Get Element Size        ${element}
    ${element_location}=    Get Element Location    ${element}
    ${start_x}=             Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=             Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=               Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=               Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe                   ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1

Swipe Right to Left
    [Arguments]                                     ${element}
    Wait Until Element Is Visible                   ${element}
    ${element_size}=        Get Element Size        ${element}
    ${element_location}=    Get Element Location    ${element}
    ${start_x}=             Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${start_y}=             Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=               Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=               Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe                   ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1

Swipe Vertical By Screen Size Percent
    [Arguments]                             ${from}     ${to}
    Swipe By Percent                        50          ${from}     50      ${to}   1000

Swipe Horizontal By Screen Size Percent
    [Arguments]                             ${from}     ${to}
    Swipe By Percent                        ${from}     50          ${to}   50      1000