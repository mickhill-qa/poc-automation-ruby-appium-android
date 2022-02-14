[ruby-image]: https://img.shields.io/badge/ruby-2.7-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-6.1.0-brightgreen
[cucumber-url]: https://cucumber.io/docs/installation/ruby/
[appium_lib-image]: https://img.shields.io/badge/appium_lib-11.2.0-purple
[appium_lib-url]: https://rubygems.org/gems/appium_lib/versions/11.2.0
[rspec-image]: https://img.shields.io/badge/rspec-3.10.0-red
[rspec-url]: https://rspec.info/documentation/
[report_builder-image]: https://img.shields.io/badge/report_builder-1.9-blue
[report_builder-url]: https://reportbuilder.rajatthareja.com/

# poc-automation-ruby-appium-android


---
## Estrutura do projeto
[![Ruby Version][ruby-image]][ruby-url]
[![Appium_lib Version][appium_lib-image]][appium_lib-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![Rspec Version][rspec-image]][rspec-url]
[![ReportBuilder Version][report_builder-image]][report_builder-url]
```
./
├── docs/
│   └── config-env/
├── features/
│   ├── hooks/
│   ├── pages/
│   ├── specs/
│   ├── step_definitions/
│   └── support/
│       ├── apps/
│       ├── config/
│       │   └── environments.yml
│       ├── helpers/
│       │   ├── page_helper.rb
│       │   ├── page_object_helper.rb
│       │   └── screenshot_helper.rb
│       ├── env.rb
│       └── report_builder.rb
├── reports/
│   ├── report-builder/
│   └── screenshots/
├── .gitignore
├── cucumber.yml
├── Gemfile
├── Gemfile.lock
└── README.md
```


---
## Ambiente Usado
Este projeto foi executado no **Windows 10**, **Windows 11** e no **MacOS Monterey 12.2** com as seguintes versões de ferramentas:

  - Ruby 2.7
  - JDK 11
  - Appium Desktop 1.20.2
  - Simulador Android 11.0 - Pixel 4 API 30
  

---
## Configurar Ambiente
Assumimos que você já ***possui o Ruby disponível no terminal***, caso não possua segue um passo a passo.

  - [Instalar Ruby](docs/config-env/install-ruby.md)


Em seguida você precisará do **JAVA_HOME** e do **ANDROID_HOME** para executar o **Appium** nos devices.

  - [Instalar Java (JDK)](docs/config-env/install-java-jdk.md)
  - [Instalar Android Studio (SDK)](docs/config-env/install-android-studio-sdk.md)


Agora você precisará do **Appium Server** para uso do App no device e do **bundler** para baixar as dependências de pacotes do projeto ruby conforme o arquivo ***"[Gemfile](Gemfile)"***.

  - [Instalar Appium Desktop](docs/config-env/install-appium-desktop.md)
  - [Instalar Bundler](docs/config-env/install-bundler.md)


---
## Executar Testes
Para executar os testes localmente abra a pasta do projeto no terminal e execute o comando:
  ```
  cucumber
  ```

Ou para um cenário específico:
  ```
  cucumber -t @myTag
  ```


---
## Alterar Ambientes de Execução
Por padrão os testes irão rodar usando a url de **qa** conforme arquivo "**[environments.yml](features/support/config/environments.yml)**".

Os ambiente disponíveis são:

  - dev
  - qa
  - prod


Para alterar em tempo de execução, adicione o parâmetro "**ENV**" no terminal:
  ```
  cucumber ENV=dev
  ```

Para alterar o padrão vá até o arquivo "**[cucumber.yml](cucumber.yml)**" e altere a linha 4:
  ```
  default: (...) -p qa
  ```
