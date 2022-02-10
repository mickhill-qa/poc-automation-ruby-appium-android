Dado('que eu esteja na pagina inicial') do
  page_home.wait_page_home
  screenshot
end

Quando('eu pesquisar por {string}') do |text_pesq|
  @text_pesq = text_pesq
  page_home.preencher_form_pesq(text_pesq)
  screenshot
  page_home.click_btn_pesquisar
end

Entao('me retorna os resultados indexados') do
  screenshot
end
