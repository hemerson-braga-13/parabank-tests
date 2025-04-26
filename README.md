# parabank-tests

Projeto de automação de testes para o site ParaBank (https://parabank.parasoft.com) utilizando Robot Framework com SeleniumLibrary. Os testes cobrem operações CRUD completas (Create, Read, Update, Delete) em um cenário bancário realista.

# TECNOLOGIA UTILIZADAS

Robot Framework
SeleniumLibrary
Python
GitHub Actions (para CI/CD)

# ESTRUTURA DO PROJETO

parabank-tests/
├── .github/                  # Configurações de CI/CD
│   └── workflows/
│       └── CI.Parabank.yml   # Pipeline GitHub Actions
├── resources/                # Keywords e lógica de teste
│   ├── common.robot          # Configurações básicas
│   ├── create.robot          # Operações de criação
│   ├── read.robot            # Operações de leitura
│   ├── update.robot          # Operações de atualização
│   └── delete.robot          # Operações de exclusão
├── tests/                    # Casos de teste
│   └── PB_web_tests.robot    # Fluxos principais
├── variables/                # Dados de teste
│   └── variables.robot       # Variáveis estáticas/dinâmicas
├── README.md                 # Informações gerais do projeto
├── requirements.txt          # Lista de dependências necessárias
└── results/                  # Resultados da execução (gerado)

# COMO EXECUTAR

- Pré-requisitos:

Python 3.9+
Pip instalado
Navegador Chrome

- Instalação:

git clone https://github.com/hemerson-braga-13/parabank-tests.git
cd parabank-tests
pip install -r requirements.txt

- Execução Local:

robot -d results tests/pb_web_tests.robot

# CONFIGURAÇÕES

- Edite o arquivo variables/variables.robot para:

Alterar navegador padrão
Ajustar timeouts
Modificar credenciais de teste

# GITHUB ACTIONS

- O pipeline está configurado para:

Executar automaticamente em pushes para main
Rodar em pull requests
Permitir execução manual
Gerar relatórios como artefatos

# CASOS DE TESTES IMPLEMENTADOS

Registro de novo usuário (com dados aleatórios)
Login e verificação de informações
Atualização de perfil
Exclusão de conta

# BOAS PRATICAS IMPLEMENTADAS

Dados aleatórios para evitar conflitos
Esperas inteligentes (não usar sleeps)
Screenshots automáticos
Keywords semânticas e reutilizáveis
Separação clara entre lógica e testes

# RESULTADOS

- Os relatórios são gerados na pasta results/ contendo:

report.html
log.html
output.xml

