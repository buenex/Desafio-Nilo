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
    Open Browser               ${base_url}    #headlesschrome
    Get Selenium speed
    Maximize Browser Window

Close Session      
    Close Browser       