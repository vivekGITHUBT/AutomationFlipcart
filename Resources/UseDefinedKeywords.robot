*** Settings ***
Library  SeleniumLibrary
Library  ../TestData/ReadData.py

*** Keywords ***
Read_Number_Of_Rows
    [Arguments]  ${SheetName}
    ${MaxRow}=  Fetch_Number_Of_Rows  ${SheetName}
    [Return]  ${MaxRow}

Read_Excell_Data_of_Cell
    [Arguments]  ${SheetName}  ${row}  ${cell}
    ${CellData}=  Fetch_Cell_Data  ${SheetName}  ${row}  ${cell}
    [Return]  ${CellData}

Read_Element_Locator
    [Arguments]  ${jsonpath}
    ${result}=  Read_locator_from_json  ${jsonpath}
    [Return]  ${result}