## Instalar WebDriver
Abra o site do **[ChormeDriver](https://chromedriver.chromium.org/downloads)** e baixe a versão de acordo com o seu navegador.

---
#### **Windows**
  - Baixe o arquivo referente a sua versão de navegador;
  - Descompacte na pasta ***"C:\Windows"***; Ou crie uma pasta de sua preferência e adicione-a as Variáveis de Ambiente.

---
#### **Linux**
Baixe o arquivo referente a sua versão de navegador, descompacte o arquivo, abra o terminal nesta pasta e execute os seguintes comandos:
```
sudo mv chromedriver /usr/bin/chromedriver
```
```
sudo chown root:root /usr/bin/chromedriver
```
```
sudo chmod +x /usr/bin/chromedriver
```

---
#### **MacOS**
Descompacte o arquivo, abra o terminal nesta pasta e execute os seguintes comandos:
```
sudo mv chromedriver /usr/local/bin
```
```
sudo chmod +x /usr/local/bin/chromedriver
```

- Também é possivel instalar via **[Homebrew](https://brew.sh/)** executando o seguinte comando:
    ```
    brew install --cask chromedriver
    ```
