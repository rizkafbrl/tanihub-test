*** Settings ***
Resource                ../resources/importer.robot

*** Keywords ***
Open Web Applications
	[Documentation]				    This keyword for default open web.
	[Arguments]                     ${url}
	Clear All File Captured
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    # Start Virtual Display           1920    1080
    Start Video Recording           name=${TEST NAME}
    ${browser}     Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To                           ${url}
    Maximize Browser Window

Close Browser Applications
    Close Browser
    Stop Video Recording

Clear All File Captured
    Remove File                     ${OUTPUTDIR}/*.png
    Remove File                     ${OUTPUTDIR}/*.html
    Remove File                     ${OUTPUTDIR}/*.webm
    

