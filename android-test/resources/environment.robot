*** Settings ***
Library                     AppiumLibrary           timeout=20           run_on_failure=Capture Failed Test
Library                     OperatingSystem
Library                     DebugLibrary
Library                     Process
Library                     JSONLibrary
Library                     String
Library                     BuiltIn
Library                     Collections
Library                     FakerLibrary