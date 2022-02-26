*** Settings ***
Documentation    Classe responsável por armazenar os casos de teste referentes a "Produto"

Resource    ./Steps.robot

#Hooks
Test Teardown    Close Browser

*** Test Cases ***
CT001 - Adicionar Cliente
  Acessar a página home do site Automation Practice
  Clicar em "My Account"
  Faça um novo cadastrar no box "Register"
  Informar um e-mail válido
  Clicar em "Register"
  Preencher os dados obrigatórios
  Submeter cadastro
  Conferir se o cadastro foi efetuado com sucesso