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
TC_Login_001
    [Documentation]  "User enters valid E-mailID/Phone number. User enters valid password, User Clicks on Login button"
    #USer should be able to login successsfully
    [Tags]  Regression
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471003
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  vampire@100
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  10 seconds
    Page should contain  My Account
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_001.png
    Close Browser

TC_Login_002
    [Documentation]  "User enters invalid E-mailID/Phone number, User enters valid password, User Clicks on Login button"
    ##User should get pop message "You are not registerd with us, Please sign up" and move on another page
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471004
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    Page should contain Button  CONTINUE
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_002.png
    Close Browser
TC_Login_003
    [Documentation]  "User enters valid E-mailID/Phone number, User enters invalid password, User Clicks on Login button"
    #User should get error message "Your User name or password is incorrect"
    [Tags]  Sanity
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345?
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    Page should contain  Your username or password is incorrect
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_003.png
    Close browser

TC_Login_004
    [Documentation]  "User directly Clicks on Login button"
    #User should get error message "Please enter valid E-mailID/Mobile number"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    Page should contain  Please enter valid Email ID/Mobile number
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_004.png
    Close Browser

TC_Login_005
    [Documentation]  "User clicks on New to flipcart?/Create an account link"
    #User should reach at Sign Up page
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${Create_An_Account}=  Read_Element_Locator  Login.SignUp.Click_Create_An_Account_Element
    Click element  ${Create_An_Account}
    Sleep  5 seconds
    Page should contain Textfield  xpath://input[@class='_2zrpKA _1dBPDZ']
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_005.png
    Close Browser

TC_Login_006
    [Documentation]  "User enters valid E-mail Id/Phone number and click on Request OTP link"
    #User should reache at OTP Page
    [Tags]  Sanity
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471003
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  vampire@100
    ${RequestOTPButton}=  Read_Element_Locator  Login.Request_OTP_Button
    Click element  ${RequestOTPButton}
    Sleep  5 seconds
    Page should contain Button  Verify
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_006.png
    Close all Browsers

TC_Login_007
    [Documentation]  "User enters Valid E-mailId/Phone number , User click on "Forgot?" Link"
    #User should reache at OTP Page
    [Tags]  Regression
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471003
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  vampire@100
    ${ForgotLink}=  Read_Element_Locator  Login.Forgot_Link
    Click element  ${ForgotLink}
    Sleep  5 seconds
    Page should contain Button  Login
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Login_007.png
    Close all Browsers
