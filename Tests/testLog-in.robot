*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Valid Log-in
    Click Link    ${login_page}
    Input Text    ${email_reg_loc}    ${email_log_input}
    Input Text    ${pass_reg_loc}    ${pass_reg_input}
    Click Button    ${btn_reg_loc}
    Wait Until Page Contains Element    ${client_page_id}
    Click Link    ${client_page}
    Wait Until Page Contains Element    ${log_loc_valid}
Invalid Log-in
    Click Link    ${login_page}
    Input Text    ${email_reg_loc}    faillog123
    Input Text    ${pass_reg_loc}    failog123
	Click Button    ${btn_reg_loc}
    Wait Until Page Contains Element     ${verification_reg_loc_invalid}


        