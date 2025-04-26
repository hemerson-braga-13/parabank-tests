*** Settings ***
Library           SeleniumLibrary
Library           String
Resource        ../variables/variables.resource

*** Keywords ***
Selecionar opção de atualizacao de info de contato
    Wait Until Element Is Visible    ${OPCAO_LINK_ATUALIZARINFO}    10s 
    Click Element    ${OPCAO_LINK_ATUALIZARINFO} 

Gerar Novos Dados Aleatórios
    ${RANDOM_STRING}=    Generate Random String    6    [LETTERS]
    ${RANDOM_NUMBER}=    Generate Random String    3    [NUMBERS]
    ${UPDATED_FIRST_NAME}=    Set Variable    Updated${RANDOM_STRING}
    ${UPDATED_LAST_NAME}=    Set Variable    User${RANDOM_STRING}
    ${UPDATED_ADDRESS}=    Set Variable    ${RANDOM_NUMBER} Outra${RANDOM_STRING} Rua
    ${UPDATED_CITY}=    Set Variable    Outra${RANDOM_STRING}Cidade
    ${UPDATED_STATE}=    Generate Random String    2    [UPPER]
    ${UPDATED_ZIP_CODE}=    Generate Random String    5    [NUMBERS]
    ${UPDATED_PHONE}=    Set Variable    777-${RANDOM_NUMBER}${RANDOM_STRING}
    
    [Return]    ${UPDATED_FIRST_NAME}    ${UPDATED_LAST_NAME}    ${UPDATED_ADDRESS}    ${UPDATED_CITY}    ${UPDATED_STATE}    ${UPDATED_ZIP_CODE}    ${UPDATED_PHONE}

Atualizar informações do perfil
    ${UPDATED_FIRST_NAME}    ${UPDATED_LAST_NAME}    ${UPDATED_ADDRESS}    ${UPDATED_CITY}    ${UPDATED_STATE}    ${UPDATED_ZIP_CODE}    ${UPDATED_PHONE} =    Gerar Novos Dados Aleatórios
    
    Input Text    ${CAMPO_PRIMEIRONOME}     ${UPDATED_FIRST_NAME}
    Input Text    ${CAMPO_ULTIMONOME}     ${UPDATED_LAST_NAME}
    Input Text    ${CAMPO_RUA}     ${UPDATED_ADDRESS}
    Input Text    ${CAMPO_CIDADE}    ${UPDATED_CITY}
    Input Text    ${CAMPO_ESTADO}    ${UPDATED_STATE}
    Input Text    ${CAMPO_CEP}     ${UPDATED_ZIP_CODE}
    Input Text    ${CAMPO_NUMEROTELEFONE}   ${UPDATED_PHONE}
    
    Click Button    ${BOTAO_ATUALIZAR_CADASTRO}
    Wait Until Page Contains    Profile Updated
    Log    Cadastro Editado com Sucesso

# Gherkin

Quando seleciono a opcao de atualizacao de perfil
    Selecionar opção de atualizacao de info de contato

Então devo atualizar o perfil com sucesso
    Atualizar informações do perfil
    Capture Page Screenshot