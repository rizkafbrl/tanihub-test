*** Setting ***
Resource                ../resources/importer.robot
Suite Setup             Run Keywords
Test Setup              Open Web Applications               ${base_url_selenium} 
Test Teardown           Close Browser Applications

*** Test Case ***
## Number 1 ###
Grab title page and place title text in answer slot #1
    [Documentation]                 This test for task #1
    [Tags]                          web-selenium-playground
    Given Page Title
    Set Selenium Speed                  0.5 
    When User Place text in answer #1
    And Check Result
    Then Answer Should Be OK            1
    Sleep                               10s

### Number 2 ###
Fill out name section of form to be Kilgore Trout
    [Documentation]                 This test for task #2
    [Tags]                          web-selenium-playground 
    Given Textbox Name
    And Set Selenium Speed                  0.5
    When Fill Textbox Name                  Kilgore Trout
    And Check Result
    Then Answer Should Be OK            2

### Number 3 ###
Set occupation on form to Sci-Fi Author
    [Documentation]                 This test for task #3
    [Tags]                          web-selenium-playground 
    Given Dropdown List
    And Set Selenium Speed                  0.5
    When Select Scifi Author
    And Check Result
    Then Answer Should Be OK            3

### Number 4 ###
Count number of blue_boxes on page after form and enter into answer box #4
    [Documentation]                 This test for task #4
    [Tags]                          web-selenium-playground 
    Given Bluebox
    And Set Selenium Speed                  0.5
    And Textbox in Answer #4
    When User Count Bluebox
    And User Fill Answer #4
    And Check Result
    Then Answer Should Be OK            4

### Number 5 ###
Click link that says click me
    [Documentation]                 This test for task #5
    [Tags]                          web-selenium-playground 
    Given Link Click Me
    And Set Selenium Speed                  0.5
    When User Click the Link
    And Check Result
    Then Answer Should Be OK            5

### Number 6 ###
Find red box on its page find class applied to it, and enter into answer box #6
    [Documentation]                 This test for task #6
    [Tags]                          web-selenium-playground 
    Given Red Box
    And Set Selenium Speed                  0.5
    When User Input Redbox in Answer #6
    And Check Result
    Then Answer Should Be OK            6

### Number 7 ###
Run JavaScript function: ran_this_js_function()
    [Documentation]                 This test for task #7
    [Tags]                          web-selenium-playground
    Given Javascript Functions on web page   
    When running ran_this_js_function() function
    And Check Result
    Then Answer Should Be OK        7
    Sleep                           5s

### Number 8 ###
Run JavaScript function: got_return_from_js_function() and place returned value to answer slot #8
    [Documentation]                 This test for task #8
    [Tags]                          web-selenium-playground
    Given Javascript Functions on web page    
    When running got_return_from_js_function() function
    And input the returned value to answer slot #8
    And Check Result
    Then Answer Should Be OK        8
    Sleep                           5s

### Number 9 ###
Mark radio button to Wrote Book
    [Documentation]                 This test for task #9
    [Tags]                          web-selenium-playground
    Given Radio Buttons on web page        
    When marking Wrote Book radio button
    And Check Result
    Then Answer Should Be OK        9
    Sleep                           5s

### Number 10 ###
Get the text from the Red Box and place it in answer slot #10
    [Documentation]                 This test for task #10
    [Tags]                          web-selenium-playground 
    Given Red Box
    And Set Selenium Speed                  0.5
    When User Get the Text of Red Box
    And User Place text in answer #10
    And Check Result
    Then Answer Should Be OK            10

### Number 11 ###
Identify green or orange box is on top
    [Documentation]                 This test for task #11
    [Tags]                          web-selenium-playground
    Given Green & Orange Boxes on web page
    When trying to identify which box is on top
    And input the identified box to answer slot #11
    And Check Result
    Then Answer Should Be OK        11
    Sleep                           5s

### Number 12 ###
Set browser width to 850 and height to 650
    [Documentation]                 This test for task #12
    [Tags]                          web-selenium-playground 
    Given Page Title
    And Set Selenium Speed                  0.5 
    When User Set Window Size
    And Check Result
    Then Answer Should Be OK            12

### Number 13 ###
Type into answer slot 13 yes or no depending on whether item by id of ishere is on the page
    [Documentation]                 This test for task #13
    [Tags]                          web-selenium-playground
    Given Page Title
    When User check if item by id of "ishere" is on the page or not
    And User input "ishere" element present to answer slot #13
    And Check Result
    Then Answer Should Be OK        13
    Sleep                           5s

### Number 14 ###
Type into answer slot 14 yes or no depending on whether item with id of purplebox is visible
    [Documentation]                 This test for task #14
    [Tags]                          web-selenium-playground
    Given Page Title
    When User check if item with id of "purplebox" is Visible
    And User input "purplebox" element present to answer slot #14
    And Check Result
    Then Answer Should Be OK        14
    Sleep                           5s

### Number 15 & Number 16 ###
Click the link with link text of click then wait a random wait will occur (up to 10 seconds) and then a new link will get added with link text of click after wait - click this new link within 500 ms of it appearing. And press OK on confirm Popup.
    [Documentation]                 This test to Click the link with link text of 'click then wait' a random wait will occur (up to 10 seconds)
    ...                             and then a new link will get added with link text of 'click after wait'
    ...                             click this new link within 500 ms of it appearing
    ...                             and press OK on confirm popup after completing 
    [Tags]                          web-selenium
    Given link with link text "click then wait"
    When User click link with link text "click then wait"
    And User wait up to 10 seconds until "click after wait" link appeared
    And User click link with link text "click after wait" after 500ms it appeared
    And User press OK on Confirm Popup after completing task number 15
    And Check Result
    Then Answer Should Be OK        15
    And Answer Should Be OK         16
    Sleep                           5s


### Number 17 ###
Click the submit button on the form
    [Documentation]                 This test for task #17
    [Tags]                          web-selenium-playground 
    Given Page Title
    And Set Selenium Speed                  0.5 
    When User Hit Submit
    And Check Result
    Then Answer Should Be OK            17




