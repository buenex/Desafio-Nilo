*** Settings ***
Documentation    Classe responsável por armazenar variaveis e keywords referente a "Produto"

Resource    ../../PageObjects/CommonPage.robot
Resource    ../../PageObjects/HtmlPage.robot
Resource    ../../PageObjects/SearchPage.robot
Resource    ../../PageObjects/ShopPage.robot

*** Variables ***
${labelItemNotFound}    xpath://div[@id="content"]//p

*** Keywords ***
Acessar a página home do site Automation Practice
    Open Session

Digitar o nome do produto "${product_name}" no campo de pesquisa
    Escrever Produto    ${product_name}

Clicar no botão de pesquisa
    Pesquisar Produto

Conferir se o produto "${product_name_result}" foi listado no site
    Produto Visivel    ${product_name_result}

Conferir mensagem "${message}"
    Comparar Mensagem    ${message}

Clique no menu "${menu_name}"
    Clicar Menu    ${menu_name}

Passar o mouse por cima da categoria "${categorie}" no menu lateral esquerdo de categorias
    Passar Mouse Sobre Categoria    ${categorie}

Clicar na sub categoria "${sub_categorie}"
    Clicar Categoria    ${sub_categorie}

Conferir se o produto "${product_name}" esta presente
    Produto Existente    ${product_name}