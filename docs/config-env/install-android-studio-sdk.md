## Instalar Android Studio


#### **Windows**
Para configurar o ambiente nos vamos precisar do instalador **Android Studio (SDK)** e da criação da variavel de ambiente **ANDROID_HOME**.

  - **Install Android Studio**:
    - Abra o *Browser*, procure e baixe o "Android Studio **.exe**";
    - Após instale, é só *"Next, Next, Install e Finish"*.

  - **Create ANDROID_HOME**:
    - Localize o diretório de instalação do SDK: será algo como *C:\<pasta da instalação>\android-sdk-window*.
    - Pesquise por **Variáveis de Ambiente** e selecione **Editar as Variáveis de Ambiente do Sistema**.
    - Clique no botão **Variáveis de Ambiente**.
    - Em **Variáveis do Sistema**, clique em **Novo**.
    - No campo **Nome da Variável**, digite:
      ```
      ANDROID_HOME
      ```
    - No campo **Valor da Variável**, insira seu **caminho de instalação do SDK** exemplo:
      ```
      C:\<pasta do usuário>\AppData\Local\Android\Sdk
      ```
    - Em sesguida adicione no **PATH** do sistema as seguintes pastas:
      ```
      %ANDROID_HOME%\emulator
      %ANDROID_HOME%\tools
      %ANDROID_HOME%\tools\bin
      %ANDROID_HOME%\platform-tools
      ```
    - Clique em **OK** e em **Aplicar** as alterações conforme solicitado.


---
#### **Linux**
Para configurar o ambiente nos vamos precisar do instalador **Android Studio (SDK)** e da criação da variavel de ambiente **ANDROID_HOME**.

  - **Install Android Studio**:
    - Abra o terminal e Instale executando o seguinte comando:
      ```
      sudo snap install android-studio --classic
      ```

  - **Create ANDROID_HOME**:
    - Abra os arquivos abaixo em um notepad:
      ```
      /etc/bashrc
      ```
      ```
      /etc/profile
      ```
      ```
      ~/.bash_profile
      ```
      ```
      ~/.bashrc
      ```
      
    - Após localize o diretório de instalação do SDK e adicione no final de todos os arquivos, por exemplo:
      ```
      export ANDROID_HOME=~/Android/Sdk
      export PATH=${PATH}:$ANDROID_HOME/emulator
      export PATH=${PATH}:$ANDROID_HOME/tools
      export PATH=${PATH}:$ANDROID_HOME/tools/bin
      export PATH=${PATH}:$ANDROID_HOME/platform-tools
      ```  


---
#### **MacOS**
Para configurar o ambiente nos vamos precisar do instalador **Android Studio (SDK)** e da criação da variavel de ambiente **ANDROID_HOME**.

  - **[Install Xcode](https://apps.apple.com/br/app/xcode/id497799835?mt=12)**:
    - Abra a *App Store*, procure  e instale o "Xcode";
    - Após a instalação, *Abra o Xcode e Aceite os Termos*.
    - Em seguida, abra o terminal e execute o seguinte comando:
      ```
      xcode-select --install
      ```

  - **Install Android Studio**:
    - Abra o *Browser*, procure e baixe o "Android Studio **.dmg**";
    - Após instale, é só *"clicar, segurar e arrastar"*.

  - **Create ANDROID_HOME**:
    - Abra os arquivos abaixo em um notepad:
      ```
      ~/.bash_profile
      ```
      ```
      ~/.profile
      ```
      ```
      ~/.zshrc
      ```
      ```
      ~/.bashrc
      ```

    - Após adicione as linhas abaixo no final de todos os arquivos:
      ```
      export ANDROID_HOME=~/Library/Android/sdk
      export PATH="${PATH}:$ANDROID_HOME/emulator"
      export PATH="${PATH}:$ANDROID_HOME/tools"
      export PATH="${PATH}:$ANDROID_HOME/tools/bin"
      export PATH="${PATH}:$ANDROID_HOME/platform-tools"
      ```
