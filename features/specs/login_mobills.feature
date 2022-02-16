#language: pt
#encoding: utf-8
@login
Funcionalidade: Login Mobills

  Contexto:
    Dado que eu estou na PÁGINA INICIAL do Mobills
    Quando eu clico em JÁ SOU CADASTRADO
    Entao o sistema exibe a PÁGINA DE OPÇÕES DE LOGIN

  @login_exception_scenario
  Esquema do Cenario: Logar com Email Invalida
    Quando eu clico em ENTRAR COM EMAIL
    E eu preencho o campo de email com: <EMAIL_INVALIDO>
    E eu clico em avancar
    Entao o sistema exibe uma mensagem de erro no campo de email: <MSG_ERRO>
    Exemplos:
      | EMAIL_INVALIDO | MSG_ERRO              |
      | ""             | "Required field"      |
      | " "            | "Invalid email field" |
      | "@"            | "Resultado Errado"    |
