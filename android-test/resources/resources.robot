*** Settings ***
Resource               importer.robot

*** Keywords ***
Open Android Apps
    Clear All File Captured
    Scan Existing Devices
    Open Application                ${appiumServer}
    ...                             udid=${udid}
    ...                             platformName=${platformName}
    ...                             deviceName=${udid}
    ...                             appPackage=${appPackage}
    ...                             appActivity=${appPackageActivity}
    Reset Application
    start screen recording          filename=${TEST NAME}.webm

Close Apps
    Stop Screen Recording           filename=${TEST NAME}.webm
    Close Application

Scan Existing Devices
    ${device}=                      Run Process                 adb devices
    ...                             cwd=${CURDIR}               shell=True
    ...                             stdout=devices.txt
    ${device}=                      Get File                          ${CURDIR}/devices.txt
    ${data}=                        Load Json From File               android-test/resources/data.json
    ${data}=                        Update Value To Json              ${data}               $.uuid                ${device}
    ${DEVICE_NAME}=                 Set Variable                      ${data["uuid"]}
    ${DEVICE_NAME}=                 Remove String Using Regexp        ${DEVICE_NAME}             [\r\n]
    Set Global variable             ${DEVICE_NAME}

Start Video Records
    ${remove}                       Run Process                adb -s ${udid} shell rm /sdcard/*.mp4
    ...                             cwd=${CURDIR}              shell=True
    Run Keyword If                  '${remove.rc}'=='0'        Start Process
    ...                             adb -s ${udid} shell screenrecord --time-limit 130 --size 1280x720 /sdcard/automation.mp4
    ...                             cwd=${CURDIR}              shell=True

Pull Video Records
    Run Process                     adb -s ${udid} pull /sdcard/automation.mp4 .
    ...                             cwd=${OUTPUTDIR}       shell=True
    Move File                       ${OUTPUTDIR}/automation.mp4         ${OUTPUTDIR}/${TEST_NAME}.mp4
    Log         <a href="${OUTPUTDIR}/${TEST_NAME}.mp4">${TEST_NAME}.mp4</a>            html=True

Capture Failed Test
    Capture Page Screenshot         filename=${TEST_NAME}.png

Clear All File Captured
    Remove File                     ${OUTPUTDIR}/*.html
    Remove File                     ${OUTPUTDIR}/${TEST NAME}.mp4
    Remove File                     ${OUTPUTDIR}/${TEST NAME}.png
