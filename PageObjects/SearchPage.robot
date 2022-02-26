*** Settings ***
Documentation    Classe responsável por armazerar os elementos da página de Pesquisa

*** Variables ***
${labelItemNotFound}    xpath://div[@id="content"]//p

*** Keywords ***
Produto Visivel
    [Arguments]    ${product_name}
    ${element}=         Get WebElement    xpath://a[contains(@title,"${product_name}")]
    Wait Until Element Is Visible    ${element}
    Element Should Be Visible    ${element}

Comparar Mensagem
    [Arguments]    ${message}
    Wait Until Element Is Visible    ${labelItemNotFound}
    ${text_label}=    Get Text    ${labelItemNotFound}
    Should Be Equal As Strings   ${text_label}    ${message}