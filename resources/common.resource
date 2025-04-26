*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/variables.resource

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Fazer login
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Input Text    ${CAMPO_USUARIO}   ${username}
    Input Text    ${CAMPO_SENHA}   ${password}
    Click Button    ${BOTAO_ENTRAR}

# Gherkin
Dado que eu faço login
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Fazer login