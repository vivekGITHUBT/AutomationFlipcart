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
TC_MyOrders_001
    [Documentation]  "Use clicks on delivered product"
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
    ${Mouseover}=  Read_Element_Locator  Login.Orders.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  10 seconds
    ${OrderLink}=  Read_Element_Locator  Login.Orders.Order_Link
    Click Element  ${OrderLink}
    Sleep  5 seconds
    ${DeliveredProduct}=  Read_Element_Locator  Login.Orders.Delivered_Product
    CLick element  ${DeliveredProduct}
    Sleep  10 seconds
    Page should contain button  Download
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_MyOrders_001.png
    Close all browsers



TC_MyOrders_002
    [Documentation]  "User Clicks on "RATE & REVIEW PRODUCT" link"
    [Tags]  smoke
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.Orders.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  10 seconds
    ${OrderLink}=  Read_Element_Locator  Login.Orders.Order_Link
    Click Element  ${OrderLink}
    Sleep  5 seconds
    ${DeliveredProduct}=  Read_Element_Locator  Login.Orders.Delivered_Product
    CLick element  ${DeliveredProduct}
    Sleep  10 seconds
    Page should contain button  Download
    ${Rate&ReviewProduct}=  Read_Element_Locator  Login.Orders.Rate_&_Review_Product
    CLick element   ${Rate&ReviewProduct}
    sleep  5 seconds
    Page should contain  Review this product
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_MyOrders_002.png
    Close all browsers

TC_MyOrders_003
    [Documentation]  "Use clicks on delivered product, User Clicks on Download Button"
    [Tags]  sanity
    openbrowser and maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.Orders.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  10 seconds
    ${OrderLink}=  Read_Element_Locator  Login.Orders.Order_Link
    Click Element  ${OrderLink}
    Sleep  5 seconds
    ${DeliveredProduct}=  Read_Element_Locator  Login.Orders.Delivered_Product
    CLick element  ${DeliveredProduct}
    Sleep  10 seconds
    ${DownloadInvoiceButton}=  Read_Element_Locator  Login.Orders.Download_Invoice_Button
    Click button  ${DownloadInvoiceButton}
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_MyOrders_003.png
    Close all browsers

TC_MyOrders_004
    [Documentation]  "User clicks on Delivered Product- negative test case"
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
    ${Mouseover}=  Read_Element_Locator  Login.Orders.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  10 seconds
    ${OrderLink}=  Read_Element_Locator  Login.Orders.Order_Link
    Click Element  ${OrderLink}
    Sleep  5 seconds
    ${DeliveredProduct}=  Read_Element_Locator  Login.Orders.Delivered_Product
    CLick element  ${DeliveredProduct}
    Sleep  10 seconds
    Page should not contain button  Cancel
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_MyOrders_004.png
    Close all browsers

TC_MyOrders_005
    [Documentation]  "User Clicks on Need Help? link"
    [Tags]  smoke
    OpenBrowser and Maximize
    ${UserName}=  Read_Element_Locator  Login.UserName_Text_BOX
    Input Text  ${UserName}  9560471005
    Sleep  5 seconds
    ${Password}=  Read_Element_Locator  Login.Password_Text_BOX
    Input Text  ${Password}  anil12345
    ${Login_Button}=  Read_Element_Locator  Login.Login_Button
    Click element  ${Login_Button}
    Sleep  5 seconds
    ${Mouseover}=  Read_Element_Locator  Login.Orders.Mouse_Over
    Mouse Over  ${Mouseover}
    Sleep  5 seconds
    ${OrderLink}=  Read_Element_Locator  Login.Orders.Order_Link
    Click Element  ${OrderLink}
    Sleep  5 seconds
    ${DeliveredProduct}=  Read_Element_Locator  Login.Orders.Delivered_Product
    CLick element  ${DeliveredProduct}
    Sleep  10 seconds
    ${NeedHelp}=  Read_Element_Locator  Login.Orders.Need_Help
    CLick element   ${NeedHelp}
    sleep  5 seconds
    Page should contain  Flipkart Support
    Capture page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/Screenshots/TC_MyOrders_005.png
    Close all browsers
