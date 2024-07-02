*** Settings ***
Documentation       Example Robot Framework project with SeleniumLibrary

Library             SeleniumLibrary
Library             OperatingSystem


*** Variables ***
${BROWSER}      Chrome
${URL}          http://localhost:5173/
${USERNAME1}     test1
${PASSWORD1}     123456
${USERNAME2}     test
${PASSWORD2}     12345


*** Test Cases ***
Open Browser and Navigate to URL
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Example Domain
    [Teardown]    Close Browser

Login Functionality
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//*[@id="root"]/div/div[1]/div[3]/a    # Click on the login link or button

    Input Text    xpath=//*[@id="login"]/div/div/form/div[1]/input    ${USERNAME1}    # Input username

    Input Password    xpath=//*[@id="login"]/div/div/form/div[2]/input    ${PASSWORD1}    # Input passwo

    Click Element    xpath=//*[@id="login"]/div/div/form/div[3]/input    # Click on the login button

    [Teardown]    Close Browser

Login Functionality fail
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=//*[@id="root"]/div/div[1]/div[3]/a    # Click on the login link or button

    Input Text    xpath=//*[@id="login"]/div/div/form/div[1]/input    ${USERNAME2}    # Input username

    Input Password    xpath=//*[@id="login"]/div/div/form/div[2]/input    ${PASSWORD2}    # Input passwo

    Click Element    xpath=//*[@id="login"]/div/div/form/div[3]/input    # Click on the login button

