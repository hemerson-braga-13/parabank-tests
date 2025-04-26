*** Variables ***
# Variaveis de Setup
${BROWSER}        chrome
${URL}            https://parabank.parasoft.com/parabank/index.htm

# Botoes
${BOTAO_ENTRAR}                        css=[value="Log In"]
${BOTAO_REGISTRAR}                     css=[value="Register"]
${BOTAO_ATUALIZAR_CADASTRO}            css=[value="Update Profile"]
${BOTAO_LIMPAR_DATABASE}               css=[value="CLEAN"]

# Links
${OPCAO_LINK_ATUALIZARINFO}            css=#leftPanel > ul > li:nth-child(6) > a
${OPCAO_LINK_PAGINA_ADMINISTRACAO}     css=#headerPanel > ul.leftmenu > li:nth-child(6) > a
${OPCAO_LINK_DESLOGAR}                 css=#leftPanel > ul > li:nth-child(8) > a

# Campos
${CAMPO_USUARIO}                       css=[name=username]
${CAMPO_SENHA}                         css=[name=password]
${CAMPO_PRIMEIRONOME}                  id=customer.firstName
${CAMPO_ULTIMONOME}                    id=customer.lastName
${CAMPO_RUA}                           id=customer.address.street
${CAMPO_CIDADE}                        id=customer.address.city
${CAMPO_ESTADO}                        id=customer.address.state
${CAMPO_CEP}                           id=customer.address.zipCode
${CAMPO_NUMEROTELEFONE}                id=customer.phoneNumber
${CAMPO_CPF}                           id=customer.ssn
${CAMPO_CADASTRO_USUARIO}              id=customer.username
${CAMPO_CADASTRO_SENHA}                id=customer.password
${CAMPO_CADASTRO_SENHAREPETIDA}        id=repeatedPassword
${CAMPO_MENSAGEM_DATABASE}             css=#rightPanel > p > b
${CAMPO_MENSAGEM_ERRO_USUARIO}         css=[class="error"]        