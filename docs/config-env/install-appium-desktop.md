## Instalar Appium Desktop


#### **Windows**
Para configurar o ambiente nos vamos precisar do **Appium** para interagir com o device.

  - **Install Appium**:
    - Abra o *Browser*, procure e baixe o "Appium Desktop **.exe**";
    - Após instale, é só *"Next, Next, Install e Finish"*.
  - **Configurando Appium**:
    - Abra o *Appium Desktop*, procure o botão "**Edit Configurations**";
    - Preencha as "**Environment Variables**" com os valores da **JAVA_HOME** e **ANDROID_HOME** já configuradas.
    - Caso não saiba os caminho, Abra o CMD e execute os seguintes comandos:
      ```
      echo %JAVA_HOME%
      ```
      ```
      echo %ANDROID_HOME%
      ```
    - Se, ao colocar os camandos no terminal, não mostrar o caminho de cada Environment Variables; volte as docs abaixo e configure-as:
        - [Instalar Java (JDK)](./install-java-jdk.md)
        - [Instalar Android Studio (SDK)](./install-android-studio-sdk.md)


---
#### **Linux**
Para configurar o ambiente nos vamos precisar do **Appium** para interagir com o device.

  - **Install Appium**:
    - Abra o *Browser*, procure e baixe o "Appium Desktop **.AppImage**";
    - Abra o terminal e Instale executando os seguintes comandos:
      ```
      chmod u+x arquivo.AppImage
      ```
      ```
      ./archive.AppImage
      ```
  - **Configurando Appium**:
    - Abra o *Appium Desktop*, procure o botão "**Edit Configurations**";
    - Preencha as "**Environment Variables**" com os valores da **JAVA_HOME** e **ANDROID_HOME** já configuradas.
    - Caso não saiba os caminho, Abra o terminal e execute os seguintes comandos:
      ```
      echo $JAVA_HOME
      ```
      ```
      echo $ANDROID_HOME
      ```
    - Se, ao colocar os camandos no terminal, não mostrar o caminho de cada Environment Variables; volte as docs abaixo e configure-as:
      - [Instalar Java (JDK)](./install-java-jdk.md)
      - [Instalar Android Studio (SDK)](./install-android-studio-sdk.md)


---
#### **MacOS**
Para configurar o ambiente nos vamos precisar do **Appium** para interagir com o device.

  - **Install Appium**:
    - Abra o *Browser*, procure e baixe o "Appium Desktop **.dmg**";
    - Após instale, é só *"clicar, segurar e arrastar"*.
  - **Configurando Appium**:
    - Abra o *Appium Desktop*, procure o botão "**Edit Configurations**";
    - Preencha as "**Environment Variables**" com os valores da **JAVA_HOME** e **ANDROID_HOME** já configuradas.
    - Caso não saiba os caminho, Abra o terminal e execute os seguintes comandos:
      ```
      echo $JAVA_HOME
      ```
      ```
      echo $ANDROID_HOME
      ```
    - Se, ao colocar os camandos no terminal, não mostrar o caminho de cada Environment Variables; volte as docs abaixo e configure-as:
        - [Instalar Java (JDK)](./install-java-jdk.md)
        - [Instalar Android Studio (SDK)](./install-android-studio-sdk.md)
