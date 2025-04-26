<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="parabanktests_0"></a>parabank-tests</h1>
<p class="has-line-data" data-line-start="2" data-line-end="3">Projeto de automação de testes para o site ParaBank (<a href="https://parabank.parasoft.com">https://parabank.parasoft.com</a>) utilizando Robot Framework com SeleniumLibrary. Os testes cobrem operações CRUD completas (Create, Read, Update, Delete) em um cenário bancário realista.</p>
<h1 class="code-line" data-line-start=4 data-line-end=5 ><a id="TECNOLOGIA_UTILIZADAS_4"></a>TECNOLOGIA UTILIZADAS</h1>
<p class="has-line-data" data-line-start="6" data-line-end="10">Robot Framework<br>
SeleniumLibrary<br>
Python<br>
GitHub Actions (para CI/CD)</p>
<h1 class="code-line" data-line-start=11 data-line-end=12 ><a id="ESTRUTURA_DO_PROJETO_11"></a>ESTRUTURA DO PROJETO</h1>
<p class="has-line-data" data-line-start="13" data-line-end="30">parabank-tests/<br>
├── .github/                  # Configurações de CI/CD<br>
│   └── workflows/<br>
│       └── CI.Parabank.yml   # Pipeline GitHub Actions<br>
├── resources/                # Keywords e lógica de teste<br>
│   ├── common.robot          # Configurações básicas<br>
│   ├── create.robot          # Operações de criação<br>
│   ├── read.robot            # Operações de leitura<br>
│   ├── update.robot          # Operações de atualização<br>
│   └── delete.robot          # Operações de exclusão<br>
├── tests/                    # Casos de teste<br>
│   └── PB_web_tests.robot    # Fluxos principais<br>
├── variables/                # Dados de teste<br>
│   └── variables.robot       # Variáveis estáticas/dinâmicas<br>
├── <a href="http://README.md">README.md</a>                 # Informações gerais do projeto<br>
├── requirements.txt          # Lista de dependências necessárias<br>
└── results/                  # Resultados da execução (gerado)</p>
<h1 class="code-line" data-line-start=31 data-line-end=32 ><a id="COMO_EXECUTAR_31"></a>COMO EXECUTAR</h1>
<ul>
<li class="has-line-data" data-line-start="33" data-line-end="35">Pré-requisitos:</li>
</ul>
<p class="has-line-data" data-line-start="35" data-line-end="38">Python 3.9+<br>
Pip instalado<br>
Navegador Chrome</p>
<ul>
<li class="has-line-data" data-line-start="39" data-line-end="41">Instalação:</li>
</ul>
<p class="has-line-data" data-line-start="41" data-line-end="44">git clone <a href="https://github.com/hemerson-braga-13/parabank-tests.git">https://github.com/hemerson-braga-13/parabank-tests.git</a><br>
cd parabank-tests<br>
pip install -r requirements.txt</p>
<ul>
<li class="has-line-data" data-line-start="45" data-line-end="47">Execução Local:</li>
</ul>
<p class="has-line-data" data-line-start="47" data-line-end="48">robot -d results tests/pb_web_tests.robot</p>
<h1 class="code-line" data-line-start=49 data-line-end=50 ><a id="CONFIGURAES_49"></a>CONFIGURAÇÕES</h1>
<ul>
<li class="has-line-data" data-line-start="51" data-line-end="53">Edite o arquivo variables/variables.robot para:</li>
</ul>
<p class="has-line-data" data-line-start="53" data-line-end="56">Alterar navegador padrão<br>
Ajustar timeouts<br>
Modificar credenciais de teste</p>
<h1 class="code-line" data-line-start=57 data-line-end=58 ><a id="GITHUB_ACTIONS_57"></a>GITHUB ACTIONS</h1>
<ul>
<li class="has-line-data" data-line-start="59" data-line-end="61">O pipeline está configurado para:</li>
</ul>
<p class="has-line-data" data-line-start="61" data-line-end="65">Executar automaticamente em pushes para main<br>
Rodar em pull requests<br>
Permitir execução manual<br>
Gerar relatórios como artefatos</p>
<h1 class="code-line" data-line-start=66 data-line-end=67 ><a id="CASOS_DE_TESTES_IMPLEMENTADOS_66"></a>CASOS DE TESTES IMPLEMENTADOS</h1>
<p class="has-line-data" data-line-start="68" data-line-end="72">Registro de novo usuário (com dados aleatórios)<br>
Login e verificação de informações<br>
Atualização de perfil<br>
Exclusão de conta</p>
<h1 class="code-line" data-line-start=73 data-line-end=74 ><a id="BOAS_PRATICAS_IMPLEMENTADAS_73"></a>BOAS PRATICAS IMPLEMENTADAS</h1>
<p class="has-line-data" data-line-start="75" data-line-end="80">Dados aleatórios para evitar conflitos<br>
Esperas inteligentes (não usar sleeps)<br>
Screenshots automáticos<br>
Keywords semânticas e reutilizáveis<br>
Separação clara entre lógica e testes</p>
<h1 class="code-line" data-line-start=81 data-line-end=82 ><a id="RESULTADOS_81"></a>RESULTADOS</h1>
<ul>
<li class="has-line-data" data-line-start="83" data-line-end="85">Os relatórios são gerados na pasta results/ contendo:</li>
</ul>
<p class="has-line-data" data-line-start="85" data-line-end="88">report.html<br>
log.html<br>
output.xml</p>
