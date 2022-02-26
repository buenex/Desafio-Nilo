*** Settings ***
Documentation    Classe responsável por armazenar os elementos da pagina de produto HTML

*** Variables ***


*** Keywords ***
Produto Existente
    [Arguments]    ${product_name}
    ${element}=    Get WebElement    xpath://h3[contains(text(),"${product_name}")]
    Wait Until Element Is Visible    ${element}
    Element Should Be Visible    ${element}