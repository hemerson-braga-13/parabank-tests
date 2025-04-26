*** Settings ***
Library           SeleniumLibrary
Resource          common.resource
Resource           ../variables/variables.resource


*** Keywords ***
Deletar conta de usuario
    Click Element    ${OPCAO_LINK_PAGINA_ADMINISTRACAO} 
    Wait Until Element Is Visible   ${BOTAO_LIMPAR_DATABASE} 
    Click Element    ${BOTAO_LIMPAR_DATABASE} 
    Wait Until Element Contains    ${CAMPO_MENSAGEM_DATABASE}    Database Cleaned    10s
    Element Should Contain    ${CAMPO_MENSAGEM_DATABASE}    Database Cleaned
    Log    Usuario Deletado Com Sucesso
    Click Element    ${OPCAO_LINK_DESLOGAR}

Verificar delete da conta de usuario

    Wait Until Element Is Visible    ${CAMPO_MENSAGEM_ERRO_USUARIO}   10s
    Element Should Contain    ${CAMPO_MENSAGEM_ERRO_USUARIO}    An internal error has occurred and has been logged.
    Log    Verificacao de Delete Bem-Sucedida

E faço login com usuario deletado
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Fazer login

# Gherkin

Quando deleto o perfil do usuario
    Deletar conta de usuario

Então devo verificar que o usuario foi deletado com sucesso
    Verificar delete da conta de usuario
    Capture Page Screenshot