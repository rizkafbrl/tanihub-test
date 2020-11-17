*** Settings ***
Library                     Selenium2Library            timeout=20          implicit_wait=1.5           run_on_failure=Capture Page Screenshot
Library                     OperatingSystem
Library                     DebugLibrary
Library                     Process
Library                     JSONLibrary
Library                     String
Library                     BuiltIn
Library                     Collections
Library                     FakerLibrary
Library                     ScreenCapLibrary
Library                     XvfbRobot
Library                     RequestsLibrary