*** Settings ***
Documentation    Classe responsável por armazenar os casos de teste referentes a "Produto"

Resource    ./Steps.robot

#Hooks
Test Teardown    Close Browser

*** Test Cases ***
CT001 - Procurando por produto
  Acessar a página home do site Automation Practice
  Digitar o nome do produto "HTML" no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir se o produto "Blouse" foi listado no site

CT002 - Pesquisar produto não existente
  Acessar a página home do site Automation Practice
  Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir mensagem "itemNãoExistente"

CT003 - Listar Produtos
  Acessar a página home do site Automation Practice
  Clique no menu "Shop"
  Passar o mouse por cima da categoria "HTML" no menu lateral esquerdo de categorias
  Clicar na sub categoria "HTML"
  Conferir se o produto "Thinking in HTML" esta presente