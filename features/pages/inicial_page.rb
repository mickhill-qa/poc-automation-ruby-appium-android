class InicialPage < PageObjectHelper

  def initialize
    @btn_cadastrar = mapping :id, "btnActionPositive"
    @btn_logar     = mapping :id, "btnActionNegative"
  end

  def wait_page_inicial
    wait_element(@btn_cadastrar,30)
    find_element(@btn_logar)
  end

  def click_btn_logar
    find_element(@btn_logar).click
  end

end
