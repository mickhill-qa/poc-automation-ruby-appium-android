## Contexto
Dado('que eu estou na PÁGINA INICIAL do Mobills') do
  page_inicial.wait_page_inicial
  screenshot
end

Quando('eu clico em JÁ SOU CADASTRADO') do
  page_inicial.click_btn_logar
end

Entao('o sistema exibe a PÁGINA DE OPÇÕES DE LOGIN') do
  page_login_options.wait_page_login_options
  screenshot
end


## Cenario: Logar com Email Invalida
# @login_exception_scenario
Quando('eu clico em ENTRAR COM EMAIL') do
  page_login_options.click_btn_entrar_com_email
end

E('eu preencho o campo de email com: {string}') do |text_email|
  page_login_email.fill_in_input_email(text_email)
  screenshot
end

E('eu clico em avancar') do
  page_login_email.click_btn_next
end

Entao('o sistema exibe uma mensagem de erro no campo de email: {string}') do |msg_erro_esperada|
  msg_erro_na_tela = page_login_email.get_msg_erro_input
  expect(msg_erro_na_tela).to eql(msg_erro_esperada)
  screenshot
end
