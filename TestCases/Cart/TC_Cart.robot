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

TC_CART_001
    [Documentation]  "USer is at home page of flipcart.com. click on Cart Link"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${RemoveLoginWindow}=  Read_Element_Locator  Login.Remove_Login_Window
    Click element  ${RemoveLoginWindow}
    ${ClickCartLink}=  Read_Element_Locator  Login.Cart.Click_Cart_Link
    CLick element  ${ClickCartLink}
    sleep  5 seconds
    page should contain button  Login
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Cart_001.png
    Close all browsers



TC_Cart_002
    [Documentation]  "User Clicks on REMOVE link"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471003
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  vampire@100
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${ClickCartLink}=  Read_Element_Locator  Login.Cart.Click_Cart_Link
    CLick element  ${ClickCartLink}
    Sleep  5 seconds
    ${Removelink}=  Read_Element_Locator  Login.Cart.Remove_Link
    CLick element  ${Removelink}
    sleep  10 seconds
    Page should contain  Are you sure you want to remove this item?
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Cart_002.png
    Close all browsers

TC_Cart_003
    [Documentation]  "User Clicks on SAVE FOR LATER link"
    [Tags]  Regression
    OpenBrowser and Maximize
     ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471003
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  vampire@100
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${ClickCartLink}=  Read_Element_Locator  Login.Cart.Click_Cart_Link
    CLick element  ${ClickCartLink}
    Sleep  5 seconds
    ${SaveForLaterLink}=  Read_Element_Locator  Login.Cart.Save_For_Later_Link
    CLick element  ${SaveForLaterLink}
    sleep  10 seconds
    ##Assertion
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Cart_003.png
    Close all browsers

TC_Cart_004
    [Documentation]  "User clicks on Dropdown of Deliver to section, User select any address"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${ClickCartLink}=  Read_Element_Locator  Login.Cart.Click_Cart_Link
    CLick element  ${ClickCartLink}
    Sleep  5 seconds
    ${DeliverToSectionLink}=  Read_Element_Locator  Login.Cart.Deliver_To_Section_Link
    Click element  ${DeliverToSectionLink}
    sleep  5 seconds
    ${SelectAddress}=  Read_Element_Locator  Login.Cart.Select_Address
    Click element  ${SelectAddress}
    sleep  5 seconds
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Cart_004.png
    Close all browsers



TC_Cart_005
    [Documentation]  "User clicks on Dropdown of Deliver to section , User Enters Valid Pin code, User clicks on check link"
    [Tags]  Regression
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${ClickCartLink}=  Read_Element_Locator  Login.Cart.Click_Cart_Link
    CLick element  ${ClickCartLink}
    Sleep  5 seconds
    ${DeliverToSectionLink}=  Read_Element_Locator  Login.Cart.Deliver_To_Section_Link
    Click element  ${DeliverToSectionLink}
    Sleep  5 seconds
    ${DeliverypincodeTextBox}=  Read_Element_Locator  Login.Cart.Delivery_pincode_TextBox
    input text  ${DeliverypincodeTextBox}  201301
    ${CheckLink}=  Read_Element_Locator  Login.Cart.Check_Link
    Click element  ${CheckLink}
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_Cart_005.png
    Close all browsers
