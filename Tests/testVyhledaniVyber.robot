*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url}    ${browser}
Test Teardown    Capture Screenshot And Close Browser  

*** Test Cases ***
Test Filtrovani Produktu
    #promenne potom doplnim, zatim napevno
    Click Link    /nerezove-kovani/
    Click Link    id=param-filter-hover
    Select Checkbox    name=manufacturerId[]
          

Test Vyhledani a Vyber Produktu
    Input Text    ${input_search_box_cobra}    ${keyword}     
    Click Button    ${seach_button_cobra}
    Page Should Contain    ${keyword}
    Click Link    ${keyword}    
    Select From List By Label    ${select_variant}    ${variant}
    Click Button    ${buy_button_cobra}
    Click Link    ${cart_button_cobra}   
    Page Should Contain    ${keyword}