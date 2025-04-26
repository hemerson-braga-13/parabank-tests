*** Settings ***
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../variables/variables.resource

*** Keywords ***
Gerar Dados Aleatórios
    ${RANDOM_STRING}=    Generate Random String    5    [LETTERS]
    ${RANDOM_NUMBER}=    Generate Random String    3    [NUMBERS]
    ${FIRST_NAME}=    Set Variable    Usuario Auto${RANDOM_STRING}
    ${LAST_NAME}=    Set Variable    Ultimo Auto${RANDOM_STRING}
    ${ADDRESS}=    Set Variable    Rua ${RANDOM_NUMBER} ${RANDOM_STRING}
    ${CITY}=    Set Variable    Cidade ${RANDOM_STRING}
    ${STATE}=    Generate Random String    2    [UPPER]
    ${ZIP_CODE}=    Generate Random String    5    [NUMBERS]
    ${PHONE}=    Set Variable    999-${RANDOM_NUMBER}
    ${SSN}=    Set Variable    ${RANDOM_NUMBER}-${RANDOM_NUMBER}-${RANDOM_NUMBER}
    ${USERNAME}=    Set Variable    X_@_X_@_X${RANDOM_NUMBER}
    ${PASSWORD}=    Set Variable    X_@_X${RANDOM_STRING}${RANDOM_NUMBER}
    
    [Return]    ${FIRST_NAME}    ${LAST_NAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIP_CODE}    ${PHONE}    ${SSN}    ${USERNAME}    ${PASSWORD}

Clicar na opcao de Registrar
    Click Link    link=Register

Registrar novo usuário
    ${FIRST_NAME}    ${LAST_NAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIP_CODE}    ${PHONE}    ${SSN}    ${USERNAME}    ${PASSWORD} =    Gerar Dados Aleatórios
    
    Input Text    ${CAMPO_PRIMEIRONOME}    ${FIRST_NAME}
    Input Text    ${CAMPO_ULTIMONOME}    ${LAST_NAME}
    Input Text    ${CAMPO_RUA}    ${ADDRESS}
    Input Text    ${CAMPO_CIDADE}     ${CITY}
    Input Text    ${CAMPO_ESTADO}    ${STATE}
    Input Text    ${CAMPO_CEP}    ${ZIP_CODE}
    Input Text    ${CAMPO_NUMEROTELEFONE}    ${PHONE}
    Input Text    ${CAMPO_CPF}     ${SSN}
    Input Text    ${CAMPO_CADASTRO_USUARIO}    ${USERNAME}
    Input Text    ${CAMPO_CADASTRO_SENHA}     ${PASSWORD}
    Input Text    ${CAMPO_CADASTRO_SENHAREPETIDA}    ${PASSWORD}
    Click Button    ${BOTAO_REGISTRAR} 

    Set Suite Variable    ${USERNAME}
    Set Suite Variable    ${PASSWORD}
    Set Suite Variable    ${FIRST_NAME}
    Set Suite Variable    ${LAST_NAME}
    Set Suite Variable    ${ADDRESS}
    Set Suite Variable    ${CITY}
    Set Suite Variable    ${STATE}
    Set Suite Variable    ${ZIP_CODE}
    Set Suite Variable    ${PHONE}
    Set Suite Variable    ${SSN}
    
Validar novo registro
    Page Should Contain    Welcome ${USERNAME}
    Log    Dados de Cadastro Salvo com Sucesso

# Gherkin
Dado que clico no botao de registro
    Clicar na opcao de Registrar

Quando preencho o formulario de registro
    Registrar novo usuário

Então devo me cadastrar com sucesso
    Validar novo registro
    Capture Page Screenshot