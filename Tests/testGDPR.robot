*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Test Negative Terms Of Payment
    Goto About Us
    Unselect Checkbox   ${checkbox_terms_of_payment}
    Submit Form  ${submit_order_form}
    Wait Until Page Contains Element  ${checkbox_error}

Test Negative GDPR
    Goto About Us
    Unselect Checkbox   ${checkbox_gdpr}
    Submit Form  ${submit_order_form}
    Wait Until Page Contains Element  ${checkbox_error}

Test Positive ToP And GDPR
    Goto About Us
    Select Checkbox   ${checkbox_gdpr}
    Select Checkbox   ${checkbox_terms_of_payment}
    Submit Form  ${submit_order_form}
    Wait Until Page Does Not Contain Element  ${checkbox_error}
