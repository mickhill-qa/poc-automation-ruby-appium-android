class LoginOptionsPage < PageObjectHelper

  def initialize
    @btn_entrar_com_google        = mapping :id, "buttonGoogle"
    @btn_entrar_com_email         = mapping :id, "buttonEmail"
    @btn_entrar_com_outras_opcoes = mapping :id, "buttonOtherProviders"
  end

  def wait_page_login_options
    find_element(@btn_entrar_com_google)
    find_element(@btn_entrar_com_email)
    find_element(@btn_entrar_com_outras_opcoes)
  end

  def click_btn_entrar_com_email
    find_element(@btn_entrar_com_email).click
  end

end
