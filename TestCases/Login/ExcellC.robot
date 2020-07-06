*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/UseDefinedKeywords.robot
*** Variables ***
${URL}  https://www.flipkart.com/
${Browser}  Chrome

*** Keywords ***
OpenBrowser and Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

*** Test Cases ***
TC_Excell_Connectivity_001
    [Documentation]  "Read data from excell and try to login for all USername& password"
    [Tags]  Regression
    ${row}=  Read_Number_Of_Rows  Sheet1
    FOR  ${i}  IN RANGE  1  ${row}+1
    \  ${Username}=  Read_Excell_Data_of_Cell  Sheet1  ${i}  1
    \   ${Password}=  Read_Excell_Data_of_Cell  Sheet1  ${i}  2
    \   OpenBrowser and Maximize
    \   Input Text  xpath://input[@class='_2zrpKA _1dBPDZ']  ${Username}
    \   Input Text  xpath://input[@class='_2zrpKA _3v41xv _1dBPDZ']  ${Password}
    \   Click element  xpath://form[@autocomplete='on']/div[3]/button
    \   Sleep  5 seconds
    \   Page should contain button  Login
    \   Capture Page screenshot  C:/Users/arun/PycharmProjects/FlipcartRobot/TestData/ScreenshotExcell/Excell${i}.png
    #${Username}=  Read Excell Data of Cell  Flipcart Login  1  1
    #${Pass}=  Read Excell Data of Cell  Flipcart Login  1  2
    #Input Text  xpath://input[@class='_2zrpKA _1dBPDZ']  ${Username}
    #Input Text  xpath://input[@class='_2zrpKA _3v41xv _1dBPDZ']  ${Password}
    #Click element  xpath://form[@autocomplete='on']/div[3]/button
    #Sleep  10 seconds
