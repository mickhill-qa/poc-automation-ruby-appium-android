class GoogleHome < PageObjectHelper

  def initialize
    @input_pesquisa = mapping :xpath, '//input[@name="q"]'
  end

  def wait_page_home
    $driver.get "https://www.google.com.br/"
    find_element(@input_pesquisa)
  end

  def preencher_form_pesq(assunto)
    find_element(@input_pesquisa).click
    find_element(@input_pesquisa).send_key assunto
  end

  def click_btn_pesquisar
    find_element(@input_pesquisa).send_keys :enter
  end

end
