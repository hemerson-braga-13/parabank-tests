*** Settings ***
Documentation    Testes CRUD para o site ParaBank
Resource         ../resources/common.resource
Resource         ../resources/create.resource
Resource         ../resources/read.resource
Resource         ../resources/update.resource
Resource         ../resources/delete.resource
Resource         ../variables/variables.resource

Test Setup     Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Teste 01: Registrar novo usuário
    Dado que clico no botao de registro
    Quando preencho o formulario de registro
    Então devo me cadastrar com sucesso

Teste 02: Fazer login e verificar informações do usuário
    Dado que eu faço login    ${USERNAME}    ${PASSWORD}
    Quando seleciono a opcao de atualizacao de perfil
    Então devo visualizar os dados do meu perfil com sucesso   ${FIRST_NAME}    ${LAST_NAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIP_CODE}    ${PHONE}

Teste 03: Atualizar informações do perfil do usuário
    Dado que eu faço login    ${USERNAME}    ${PASSWORD}
    Quando seleciono a opcao de atualizacao de perfil
    Então devo atualizar o perfil com sucesso

Teste 04: Apagar Conta de Usuário
    Dado que eu faço login    ${USERNAME}    ${PASSWORD}
    Quando deleto o perfil do usuario
    E faço login com usuario deletado    ${USERNAME}    ${PASSWORD}
    Então devo verificar que o usuario foi deletado com sucesso
