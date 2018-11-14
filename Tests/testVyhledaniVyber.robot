*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Close Browser  

*** Test Cases ***
 Test Filtrovani Typu Produktu Oliva
    Click Link    ${link_kovani}
    Click Link    ${filter}
    Wait Until Page Contains Element    ${filter_type}   
    Select Checkbox    ${checkbox_oliva}
    Wait Until Page Contains Element    ${container_products}   
    Page Should Contain    ${oliva_product1}    ${oliva_product2}
        
Test Vyhledani a Vyber Produktu
    Input Text    ${input_search_box_cobra}    ${keyword}     
    Click Button    ${seach_button_cobra}
    Page Should Contain    ${keyword}
    Click Link    ${keyword}    
    Select From List By Label    ${select_variant}    ${variant}
    Click Button    ${buy_button_cobra}
    Click Link    ${cart_button_cobra}   
    Page Should Contain    ${keyword}