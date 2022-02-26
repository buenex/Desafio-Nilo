*** Settings ***
Documentation    Classe responsável por armazenar a base do projeto;

#Librarys
Library    SeleniumLibrary
Library    Library/Uteis.py


*** Variables ***
${base_url}    http://practice.automationtesting.in/

*** Keywords ***
#Hooks
Open Session
    Open Browser               ${base_url}    chrome
    Get Selenium speed
    Maximize Browser Window
    Set Selenium Timeout    30

Close Session
    Close Browser       