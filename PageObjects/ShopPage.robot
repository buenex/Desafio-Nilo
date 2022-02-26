*** Settings ***
Documentation    Classe responsável por armazenar elementos da pagina Shop

*** Variables ***


*** Keywords ***
Passar Mouse Sobre Categoria
    [Arguments]    ${categorie}
    ${element}=    Get WebElement    xpath://*[@id="woocommerce_product_categories-2"]//a[text()="${categorie}"]
    Wait Until Element Is Visible    ${element}
    Mouse Over    ${element}

Clicar Categoria
    [Arguments]    ${categorie}
    ${element}=    Get WebElement    xpath://*[@id="woocommerce_product_categories-2"]//a[text()="${categorie}"]
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}