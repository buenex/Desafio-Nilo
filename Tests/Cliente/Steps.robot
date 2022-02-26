*** Settings ***
Documentation    Classe responsável por armazenar variáveis e keywords referentes a "Cliente"

Resource    ../../PageObjects/CommonPage.robot
Resource    ../../PageObjects/MyAccountPage.robot

*** Variables ***

*** Keywords ***
Acessar a página home do site Automation Practice
    Open Session

Clicar em "${menu_name}"
    Clicar Menu    ${menu_name}

Faça um novo cadastrar no box "Register"
    Log    Skip

Informar um e-mail válido
    Preencher Email

Clicar em "Register"
    Clicar Register

Preencher os dados obrigatórios
    Preencher Password    TesTandO@12332

Submeter cadastro
    Clicar Register

Conferir se o cadastro foi efetuado com sucesso
    Verifica Cadastro