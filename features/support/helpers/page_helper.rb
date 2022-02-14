# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

# Depois que pegar os arquivos com (_page.rb) estancio todos as suas variaveis
module PageHelper
  def page_inicial
    @page_inicial = InicialPage.new
  end
  def page_login_options
    @page_login_options = LoginOptionsPage.new
  end
  def page_login_email
    @page_login_email = LoginEmailPage.new
  end
end

World PageHelper
