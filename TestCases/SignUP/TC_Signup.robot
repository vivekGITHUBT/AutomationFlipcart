*** Settings ***
Library  SeleniumLibrary
Library  ../../ExternallKeywords/Locators.py
Resource  ../../Resources/UseDefinedKeywords.robot
*** Variables ***
${URL}  https://www.flipkart.com/
${Browser}  Chrome

*** Keywords ***
OpenBrowser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

*** Test Cases ***
TC_Signup_001
    [Documentation]  "SignUp Page-User enters valid Mobile number, User clicks on continue button"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${Createanaccountlink}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    CLick element  ${Createanaccountlink}
    Sleep  5 seconds
    ${User_Name}=  Read_Element_Locator  Login.SignUp.UserName_Text_Box
    input text  ${User_Name}  9560471004
    ${Click_Button}=  Read_Element_Locator  Login.SignUp.Continue_Button
    Click Button  ${Click_Button}
    sleep  5 seconds
    Page should contain  OTP sent to Mobile
    Capture Page Screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Signup_001.png
    close all browsers

TC_Signup_002
    [Documentation]  "User clicks on Existing User?/ Login  link"
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${Createanaccountlink}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    CLick element  ${Createanaccountlink}
    ${ExistingUser?Loginlink}=  Read_Element_Locator  Login.SignUp.Existing User?Login_link
    CLick element  ${ExistingUser?Loginlink}
    sleep  5 seconds
    Page should contain button  Login
    Capture Page Screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Signup_002.png
    close all browsers

TC_Signup_003
    [Documentation]  "User enters invalid Mobile number, User clicks on continue button"
    [Tags]  Sanity
    OpenBrowser and Maximize
    ${Createanaccountlink}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    CLick element  ${Createanaccountlink}
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  0000000000
    ${Click_Button}=  Read_Element_Locator  Login.SignUp.Continue_Button
    Click Button  ${Click_Button}
    sleep  5 seconds
    Page should contain  Please enter a valid Mobile number
    Capture Page Screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Signup_003.png
    close all browsers

TC_Signup_004
    [Documentation]  "User directly click on continue button "
    [Tags]  Regression
    OpenBrowser and Maximize
    ${Createanaccountlink}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    CLick element  ${Createanaccountlink}
    ${Click_Button}=  Read_Element_Locator  Login.SignUp.Continue_Button
    Click Button  ${Click_Button}
    sleep  5 seconds
    Page should contain  Please enter a valid Mobile number
    Capture Page Screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Signup_004.png
    close all browsers

TC_Signup_005
    [Documentation]  "User wait at Signup page"
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${Createanaccountlink}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    CLick element  ${Createanaccountlink}
    Page should contain  Sign up with your mobile number to get started
    Capture Page Screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Signup_005.png
    close all browsers