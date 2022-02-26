<h1 align="center"> Desafio de automação Nilo </h1><br> 
<h4>Este projeto teve como objetivo servir de estudo e prática realizada em um processo seletivo.</h4>
<br><br>
<h2>Preparando o ambiente</h2><br>
<h4>Como o projeto foi feito em Robot Framework será necessário algumas instalações para que seja possível executar</h4><br>
<ul>
    <li><a href="https://www.python.org/downloads/">Python 3.10 ~ Latest</a></li>
    <li><a href="https://code.visualstudio.com/">VSCode (Opcional)</a></li>
    <li><a href="https://pypi.org/project/robotframework/">Robot Framework (Dependencia do python via pip)</a></li>
    <li><a href="pip install robotframework-seleniumlibrary">Robot Framework Selenium Library (Dependencia do python via pip)</a></li>
    <li><a href="https://chromedriver.chromium.org/downloads">Chromedriver (Versão depende da sua versão do chrome)</a></li>
    <p>Extrair o chromedriver na pasta C:/Windows/</p>
</ul><br><br>

<h2>Execução dos testes</h2><br>
<h4>Método 1: Via CMD</h4><br>
<ol>
    <li>Abra a pasta do projeto</li>
    <li>Clique na aba de endereço da pasta</li>
    <li>Digite "cmd" e pressione "Enter"</li>
    <li>Execute o seguinte comando: <br>```python -m robot --log Report/log.html --report Report/report --log Report/log --output Report/out.xml ./Tests```</li>
</ol><br><br>
<h4>Método 2: Via VSCODE</h4><br>
<ol>
    <li>Abra a pasta do projeto no vscode</li>
    <li>Clique na guia "Terminal"</li>
    <li>Clique em "Run Task"</li>
    <li>Escolha "run all tests"</li>
</ol>