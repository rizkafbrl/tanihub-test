*** Settings ***
Resource                   ../resources/importer.robot

*** Keyword ***

###Number 1###
Given Page Title 
  Wait Until Element Is Visible     xpath=//h2[@id="tophead"]            

When User Place text in answer #1 
  ${title}=                          Get Title                              
  Scroll Element Into View           xpath=//input[@id="answer1"]
  Input Text                         xpath=//input[@id="answer1"]          ${title}

### Expect ###
And Check Result
  Scroll Element Into View           xpath=//input[@id="checkresults"]
  Click Element                      xpath=//input[@id="checkresults"]

Then Answer Should Be OK
  [Arguments]                        ${test_number}
  Scroll Element Into View           xpath=//span[@id="ok_${test_number}"]
  Wait Until Element Is Visible      xpath=//span[@id="ok_${test_number}"]
  Element Text Should Be             xpath=//span[@id="ok_${test_number}"]               OK

### Negative Case ###
Then Answer Should Not Be OK
  [Arguments]                        ${test_number}
  Scroll Element Into View           xpath=//span[@id="ok_${test_number}"]
  Wait Until Element Is Visible      xpath=//span[@id="ok_${test_number}"]
  Element Text Should Not Be         xpath=//span[@id="ok_${test_number}"]               OK

### Number 2###
Given Textbox Name
  Wait Until Element Is Visible      xpath=//input[@id="name"]

When Fill Textbox Name
  [Arguments]                        ${fill_name}
  Input Text                         xpath=//input[@id="name"]          ${fill_name}

### Number 3 ###
Given Dropdown List
  Wait Until Element Is Visible      xpath=//select[@id="occupation"]

When Select Scifi Author
  Select From List By Value          xpath=//select[@id="occupation"]       scifiauthor

### Number 4 ###
Given Bluebox
  Wait Until Element Is Visible      xpath=//span[@class="bluebox"]

And Textbox in Answer #4
  Wait Until Element Is Visible      xpath=//input[@id="answer4"]

When User Count Bluebox 
  ${count}                           Get Element Count                      xpath=//span[@class="bluebox"]
  Set Global Variable                ${count}

And User Fill Answer #4
  Scroll Element Into View           xpath=//input[@id="answer4"]
  Input Text                         xpath=//input[@id="answer4"]          ${count}

### Number 5 ###
Given Link Click Me
  Wait Until Element Is Visible      xpath=//a[contains(text(), "click me")]                 timeout=20              error=click me not found

When User Click the Link
  Click Element                      xpath=//a[contains(text(), "click me")]

### Number 6 & 10 ###
Given Red Box 
  Wait Until Element Is Visible      xpath=//span[@id="redbox"]

### Number 6 ###
When User Input Redbox in Answer #6
  ${class}                           Get Element Attribute               xpath=//span[@id="redbox"]           class
  Input Text                         xpath=//input[@id="answer6"]          ${class}

## Number 7 & 8 ###
Given Javascript Functions on web page
  Page Should Contain Element        xpath=//script[@type="text/javascript"]

When running ran_this_js_function() function
  Execute JavaScript                 window.ran_this_js_function()

When running got_return_from_js_function() function
  ${returned_value}                  Execute JavaScript                     return window.got_return_from_js_function()
  Set Global Variable                ${returned_value}

And input the returned value to answer slot #8
  Input Text                         xpath=//input[@id="answer8"]          ${returned_value}

### Number 9 ###
Given Radio Buttons on web page
  Wait Until Element Is Visible        xpath=//input[@value="wrotebook"]
  Wait Until Element Is Visible        xpath=//input[@value="didntwritebook"]

When marking Wrote Book radio button
  Select Radio button                  wrotebook                           wrotebook

### Number 10 ###
When User Get the Text of Red Box
  ${text_redbox}=                    Get Text                             xpath=//span[@id="redbox"] 
  Set Global Variable                ${text_redbox}

And User Place text in answer #10   
  Scroll Element Into View           xpath=//input[@id="answer10"]
  Input Text                         xpath=//input[@id="answer10"]          ${text_redbox}

### Number 11 ###
Given Green & Orange Boxes on web page
  Wait Until Element Is Visible        xpath=//span[@id="orangebox"]
  Wait Until Element Is Visible        xpath=//span[@id="greenbox"]

When trying to identify which box is on top
  ${greenbox_position}                 Get Vertical Position                 xpath=//span[@id="greenbox"]
  ${orangebox_position}                Get Vertical Position                 xpath=//span[@id="orangebox"]
  ${which_box}                         Set Variable If                       ${greenbox_position} > ${orangebox_position}               
  ...                                  orange                                green
  Set Global Variable                  ${which_box}

And input the identified box to answer slot #11
  Input Text                          xpath=//input[@id="answer11"]          ${which_box}

### Number 12 ###
When User Set Window Size
  Set Window Size                   850       650     

### Number 13 ###
When User check if item by id of "ishere" is on the page or not
  ${ishere_element}                   Run Keyword and Return Status          Page Should Contain Element 
  ...                                 xpath=//*[@id="ishere"]
  ${ishere_present}                   Set Variable If                        ${ishere_element} == True
  ...                                 yes                                    no
  Set Global Variable                 ${ishere_present}

And User input "ishere" element present to answer slot #13
  Input Text                          xpath=//input[@id="answer13"]          ${ishere_present}

### Number 14 ###
When User check if item with id of "purplebox" is Visible
  ${purplebox_element}                Run Keyword and Return Status          Element Should Be Visible 
  ...                                 xpath=//*[@id="purplebox"]
  ${purplebox_present}                Set Variable If                        ${purplebox_element} == True
  ...                                 yes                                    no
  Set Global Variable                 ${purplebox_present}     

And User input "purplebox" element present to answer slot #14
  Input Text                          xpath=//input[@id="answer14"]          ${purplebox_present}

### Number 15 ###
Given link with link text "click then wait"
  Wait Until Element Is Visible       xpath=//a[contains(text(), "click then wait")]

When User click link with link text "click then wait"
  Click Element                       xpath=//a[contains(text(), "click then wait")]

And User wait up to 10 seconds until "click after wait" link appeared
  Wait Until Element Is Visible       xpath=//a[contains(text(), "click after wait")]           timeout=10

And User click link with link text "click after wait" after 500ms it appeared
  Click Element                       xpath=//a[contains(text(), "click after wait")]

And User press OK on Confirm Popup after completing task number 15
  Handle Alert

### Number 17 ###
When User Hit Submit
  Click Element                     xpath=//input[@id="submitbutton"]










