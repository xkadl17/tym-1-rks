*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Test Negative Required Fields
    Goto About Us
    Input Text  ${email_field}  ${email}
    Submit Form  ${submit_order_form}
    Wait Until Page Contains Element    ${field_error}

Test Positive Required Fields
    Goto About Us
    Input Text  ${email_field}  ${email}
    Input Text  ${phone_field}  ${phone}
    Input Text  ${name_field}  ${name}
    Input Text  ${street_field}  ${street}
    Input Text  ${city_field}  ${city}
    Input Text  ${zip_field}  ${zip}
    Submit Form  ${submit_order_form}
    Wait Until Page Does Not Contain Element    ${field_error}

