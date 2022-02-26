*** Settings ***
Documentation    Classe responsável por armazenar os elementos da pagina MyAccount

Library     ../Infra/Library/Uteis.py

*** Variables ***
${txt_email}    id:reg_email
${txt_password}    id:reg_password
${btn_register}    xpath://input[@value="Register"]
${label_hello_user}    xpath://p[contains(text(),"Hello")]

*** Keywords ***
Preencher Email
    Wait Until Element Is Visible    ${txt_email}
    ${email}=    Gerar Email
    Log    ${email}
    Input Text    ${txt_email}       ${email}

Preencher Password
    [Arguments]    ${password}
    Sleep    2s
    Wait Until Element Is Visible    ${txt_password}
    Input Text    ${txt_password}    ${password}

Clicar Register
    Wait Until Element Is Visible    ${btn_register}
    Click Element    ${btn_register}

Verifica Cadastro
    Wait Until Element Is Visible    ${label_hello_user}
    Element Should Be Visible    ${label_hello_user}