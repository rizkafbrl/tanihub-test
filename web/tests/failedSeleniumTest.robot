*** Setting ***
Resource                ../resources/importer.robot
Suite Setup             Run Keywords
Test Setup              Open Web Applications               ${base_url_selenium} 
Test Teardown           Close Browser Applications

*** Test Case ***
## Number 1 ###
Grab title page and place title text in answer slot #1 failed Case
    [Documentation]                 This test for task #1
    [Tags]                          web-selenium-playground
    Given Page Title
    Set Selenium Speed                  0.5 
    When User Place text in answer #1
    And Check Result
    Then Answer Should Not Be OK        1