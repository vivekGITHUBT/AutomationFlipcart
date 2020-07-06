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

TC_GiftCard_001
    [Documentation]  "User fills all textboxes in person gift card section, Use clicks on Buy Gift Card button"
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
    ${Mouseover}=  Read_Element_Locator  Login.GiftCard.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${GiftCardLink}=  Read_Element_Locator  Login.GiftCard.GiftCard_Link
    Click element  ${GiftCardLink}
    Sleep  5 seconds
    ${RecieversE-mailIDTextbox}=  Read_Element_Locator  Login.GiftCard.Recievers_E-mail_ID_Textbox
    input text  ${RecieversE-mailIDTextbox}  projectworkid@gmail.com
    ${RecieversNameTextbox}=  Read_Element_Locator  Login.GiftCard.Recievers_Name_Textbox
    input text  ${RecieversNameTextbox}  Saurabh
    ${CartValue}=  Read_Element_Locator  Login.GiftCard.Cart_Value
    Select from list by index  ${CartValue}  3
    ${BuyGiftCardButton}=  Read_Element_Locator  Login.GiftCard.Buy_Gift_Card_Button
    Click button  ${BuyGiftCardButton}
    Sleep  10 seconds
    # Assertion/Validation
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_GiftCard_001.png
    Close all browsers


TC_GiftCard_002
    [Documentation]  "User fills all textboxes in Corporate Requirements gift card section, Use clicks on SUBMIT DETAILS button"
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.GiftCard.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${GiftCardLink}=  Read_Element_Locator  Login.GiftCard.GiftCard_Link
    Click element  ${GiftCardLink}
    Sleep  5 seconds
    ${CORPORATEREQUIREMENTSLink}=  Read_Element_Locator  Login.GiftCard.CORPORATE_REQUIREMENTS_Link
    Click element  ${CORPORATEREQUIREMENTSLink}
    ${FirstNametextbox}=  Read_Element_Locator  Login.GiftCard.First_Name_textbox
    input text  ${FirstNametextbox}  vivek
    ${MobileNumberTextbox}=  Read_Element_Locator  Login.GiftCard.Mobile_Number_Textbox
    input text  ${MobileNumberTextbox}  9990236452
    ${E-mailTextBox}=  Read_Element_Locator  Login.GiftCard.E-mail_TextBox
    input text  ${E-mailTextBox}  jobworkid@gmail.com
    ${LocationDrop_Down}=  Read_Element_Locator  Login.GiftCard.Location_Drop_Down
    Select from list by value  ${LocationDrop_Down}  Delhi
    ${SubmitDetailsButton}=  Read_Element_Locator  Login.GiftCard.Submit_Details_Button
    Click button  ${SubmitDetailsButton}
    Sleep  10 seconds
    Page should contain button  SUBMIT DETAILS
    sleep  5 seconds
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_GiftCard_002.png
    Close all browsers



TC_GiftCard_003

    [Documentation]  "User clicks on Add a Gift Card link"
    [Tags]  Sanity
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.GiftCard.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${GiftCardLink}=  Read_Element_Locator  Login.GiftCard.GiftCard_Link
    Click element  ${GiftCardLink}
    Sleep  5 seconds
    ${ADDAGIFTCARDlink}=  Read_Element_Locator  Login.GiftCard.ADD_A_GIFT_CARD_link
    Click element  ${ADDAGIFTCARDlink}
    sleep  5 seconds
    page should contain button  ADD GIFT CARD TO ACCOUNT
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_GiftCard_003.png
    Close all browsers


TC_GiftCard_004

    [Documentation]  "User clicks on Check Gift Card Balanace link"
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
    ${Mouseover}=  Read_Element_Locator  Login.GiftCard.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${GiftCardLink}=  Read_Element_Locator  Login.GiftCard.GiftCard_Link
    Click element  ${GiftCardLink}
    Sleep  5 seconds
    ${CheckGiftCardBalance}=  Read_Element_Locator  Login.GiftCard.Check_Gift_Card_Balance
    Click element  ${CheckGiftCardBalance}
    sleep  5 seconds
    page should contain button  CHECK GIFT CARD BALANCE
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_GiftCard_004.png
    Close all browsers




TC_GiftCard_005
    [Documentation]  "User scrolled down to see  FAQs  and Terms & Conditions"
    [Tags]  Smoke
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.GiftCard.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${GiftCardLink}=  Read_Element_Locator  Login.GiftCard.GiftCard_Link
    Click element  ${GiftCardLink}
    Sleep  10 seconds
    page should contain  How do I buy / gift a Flipkart Gift Card?
    page should contain  Terms & Conditions
    page should contain  FAQs
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_GiftCard_005.png
    Close all browsers
