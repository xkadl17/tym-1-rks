*** Settings ***
Library    Selenium2Library
Resource    ../Settings/Imports.txt
Test Setup    Open Cobra    ${url-sasha}    ${browser}
Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
Test COBRA
    Wait Until Page Contains Element    ${image_logo_cobra}
    Capture Page Screenshot
    Click Button    ${do_kosiku-sasha}   
    Click Link    ${do_kosiku_red-sasha}
    Click Link    ${continue_order-sasha}
    Click Button    ${continue_order_2-sasha}
    Input Text    ${email-sasha}    ${email-text-sasha}
    Input Text    ${phone-sasha}    ${phone}
    Input Text    ${name-sasha}    ${name}
    Input Text    ${street-sasha}    ${street}
    Input Text    ${mesto-sasha}    ${city}
    Input Text    ${psc-sasha}    ${zip}
    Click Element    ${registrace-sasha}
    Capture Page Screenshot   
    Click Element    ${poznamka-sasha}
    Input Text    ${poznamka-input-sasha}    ${poznamka-text-sasha}
    Capture Page Screenshot
    Click Element    ${firma-sasha}
    Input Text    ${firma-name-sasha}    ${firma-name-text-sasha}
    Input Text    ${firma-ic-sasha}    ${firma-ic-text-sasha}
    Input Text    ${firma-dic-sasha}    ${firma-dic-text-sasha}
    Capture Page Screenshot
    Click Element    ${podtverzeni-sasha}
    Click Element    ${podtverzeni-2-sasha}
    Click Button    ${odeslat-sasha}
    Capture Page Screenshot
    
    
    
      