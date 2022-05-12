# Robotframework
I created this image to run robotframework test inside docker container. 
[Docker Hub](https://hub.docker.com/repository/docker/vaisanenj/robotframework)

You can check requirements.txt file to check which python packages image contains.

## Running test with vaisanenj/robotframework image

Following command run all test cases under path/to/test folder. Creates new folder with timestamp under /path/to/result folder where it save results.
When test have been run it will delete container automatically with -rm argument.

`docker container run --rm -v path/to/result:/Robot/Results -v path/to/tests:/Robot/Tests vaisanenj/robotframework`

You can also use robot command line arguments when starting container. Following command start test that contains smoke tag only.

`docker container run --rm -v result:/Robot/Results -v tests:/Robot/Tests vaisanenj/robotframework --include smoke`

If you want access to container when starting it you can use following command:

`docker container run --entrypoint bash -it --rm -v  result:/Robot/Results -v tests:/Robot/Tests vaisanenj/robotframework`


## Open headlesschrome with Robot Framework
If you are planning to run Selenium test with this image you can use following code:
```
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Chrome
    [Arguments]    ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-setuid-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    ${url}
    
*** Test Cases ***
Demo
    Open Chrome    https://github.com/vaisanenj
    Element Should Contain    class:p-nickname    vaisanenj
```

It's simple test that opens vaisanenj github page and validates that user nickname is vaisanenj.

## Other Libraries
If you are planning to use different libraries make sure to look requirements.txt file to check if right library is installed.
