*** Settings ***
Documentation    Classe responsável por armazenar os Web elements comuns entre as páginas
Resource    ../Infra/Base.robot

*** Variables ***
${txtProductSearch}    id:s

*** Keywords ***
Escrever Produto
    [Arguments]    ${product_name}
    Wait Until Element Is Visible    ${txtProductSearch}
    Input Text    ${txtProductSearch}    ${product_name}

Pesquisar Produto
    Wait Until Element Is Visible    ${txtProductSearch}
    Press Keys    ${txtProductSearch}    ENTER

Clicar Menu
    [Arguments]    ${menu_name}
    ${element}=    Get WebElement    xpath://ul[@id="main-nav"]/li/a[text()="${menu_name}"]
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}