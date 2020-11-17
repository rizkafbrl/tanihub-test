# Tani Hub Test

### Installation
1. Install Python 3.8 in [here](https://www.python.org/downloads/release/python-386/)
2. Install virtualenvwrapper:
    * For Windows user [here](https://pypi.org/project/virtualenvwrapper-win/)
    * For MacOS & Linux user [here](https://virtualenvwrapper.readthedocs.io/en/latest/)
3. Install Python Libraries:
    * Change directory to this project
    * Run your virtualenv with `workon your_virtualenv`
    * Run command `pip install -r requirements.txt` to install libraries
4. Other Installation for `Web Automation`:
    * Download and Install chrome driver or geckodriver (firefox browser) [here](https://chromedriver.chromium.org/downloads)
5. Other Installation for `Android Automation`:
    * Install Appium in [here](http://appium.io/docs/en/about-appium/getting-started/?lang=en)
    * Install Android SDK in [here](https://badoystudio.com/cara-install-sdk-android-studio/)


### Running Automation
First run your virtualenv with `workon your_virtualenv`

##### Android
1. Check your available devices:

    `adb devices`

2. Start appium server: 

    `appium --no-reset`
    
3. Run android automation: 
    
    `robot --outputdir "./test-results" android-test/tests/MobileTanihubTest.robot`

#### API

`robot --outputdir "./api-test/test-results" api-test/tests/apiTest.robot`

#### Web

##### Tanihub Web

`robot --outputdir "./web/test-results-tanihub" web/tests/uiTest.robot`

##### Selenium Playground

`robot --outputdir "./web/test-results-selenium" web/tests/seleniumTest.robot`

##### Failed Selenium Playground

`robot --outputdir "./web/test-results-failed-selenium" web/tests/failedSeleniumTest.robot`

### Video Recording
Al video recordings as result stored in Google Drive
