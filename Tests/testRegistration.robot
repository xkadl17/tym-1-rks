*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser


*** Test Cases ***
Valid registration
   Click Link    ${registrace}
   Input Text    ${email_reg_loc}    ${email_reg_input}
   Input Text    ${pass_reg_loc}    ${pass_reg_input}
   Input Text    ${pass_reg_loc_again}    ${pass_reg_input}
   Select Checkbox    ${Checkbox_reg_select_loc}
   Click Button    ${btn_reg_loc}
   Wait Until Page Contains Element    ${verification_reg_loc_valid}

Invalid registration
   Click Link    ${registrace}
   Input Text    ${email_reg_loc}    ${email_reg_input}
   Input Text    ${pass_reg_loc}    ${pass_reg_input}
   Input Text    ${pass_reg_loc_again}    ${pass_reg_input}
   Click Button    ${btn_reg_loc}
   Wait Until Page Contains Element    ${verification_reg_loc_invalid}
               