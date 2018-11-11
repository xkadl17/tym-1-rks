*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser  

*** Test Cases ***
Test COBRA 
    
    Input Text    ${input_search_box_cobra}    ${keyword}     
    Click Button    ${seach_button_cobra}
    Page Should Contain    ${keyword}
    Click Link    ${keyword}    
    Select From List By Label    ${select_variant}    ${variant}
    Click Button    ${buy_button_cobra}
    Click Link    ${cart_button_cobra}   
    Page Should Contain    ${keyword}
    Click Link    ${continue_order_cobra}
    Select From List By Label    ${delivery_country_cobra}    Slovensko
    Page Should Contain    ${msg_country_cobra}   
    Capture Page Screenshot
    Select From List By Label    ${delivery_country_cobra}    Česká republika
    Wait Until Element Is Visible    ${waiting_for_element}    
    Select Radio Button    ${delivery_cobra}    1
    Select Radio Button    ${payment_cobra}    5
    Capture Page Screenshot
    Select Radio Button    ${delivery_cobra}    15
    Select Radio Button    ${payment_cobra}    3
    Capture Page Screenshot
    Select Radio Button    ${delivery_cobra}    15
    Select Radio Button    ${payment_cobra}    5
    Capture Page Screenshot
    Select Radio Button    ${delivery_cobra}    4
    Select Radio Button    ${payment_cobra}    2
    Capture Page Screenshot
    Select Radio Button    ${delivery_cobra}    4
    Select Radio Button    ${payment_cobra}    5
    Capture Page Screenshot
    Select Radio Button    ${delivery_cobra}    1
    Select Radio Button    ${payment_cobra}    3
    
    
