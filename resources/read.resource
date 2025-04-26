*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/variables.resource

*** Keywords ***

Verificar informações do usuário
    [Arguments]    ${first_name}   ${last_name}    ${address}    ${city}    ${state}    ${zip_code}    ${phone}


    &{campos}    Create Dictionary
    ...    customer.firstName=${first_name}
    ...    customer.lastName=${last_name}
    ...    customer.address.street=${address}
    ...    customer.address.city=${city}
    ...    customer.address.state=${state}
    ...    customer.address.zipCode=${zip_code}
    ...    customer.phoneNumber=${phone}
    
    FOR    ${id}    ${valor}    IN    &{campos}
        ${seletor}=    Set Variable    css=[id="${id}"]
        Sleep    1
        Textfield Should Contain    ${seletor}    ${valor}
    END

# Gherkin

Então devo visualizar os dados do meu perfil com sucesso
    [Arguments]    ${first_name}   ${last_name}    ${address}    ${city}    ${state}    ${zip_code}    ${phone}
    Verificar informações do usuário    ${FIRST_NAME}    ${LAST_NAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIP_CODE}    ${PHONE}
    Capture Page Screenshot