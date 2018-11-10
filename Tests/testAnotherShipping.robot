*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Test Negative Select Another Shipping
    Goto About Us
    Unselect Checkbox  ${checkbox_another_shipping}
    Wait Until Page Contains Element    ${another_shipping_hidden}

Test Positive Select Another Shipping
    Goto About Us
    Select Checkbox  ${checkbox_another_shipping}
    Wait Until Page Contains Element    ${another_shipping_shown}
