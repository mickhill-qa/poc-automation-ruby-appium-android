module ScreenshotHelper

  def screenshot_erro(name_step_erro)
    data_e_hora         = Time.now.strftime('%Y-%m-%d_-_%H-%M-%S-%L').to_s
    foto                = "#{data_e_hora}_-_#{SELECTED_DEVICE}_#{SELECTED_ENV}_ERRO_#{name_step_erro}.png"
    caminho_screenshot  = "./#{SCREENSHOT_PATH}" + foto
    driver.save_screenshot(caminho_screenshot)
    attach(caminho_screenshot, 'image/png')
  end

  def screenshot
    sleep 1
    data_e_hora         = Time.now.strftime('%Y-%m-%d_-_%H-%M-%S-%L').to_s
    foto                = "#{data_e_hora}_-_#{SELECTED_DEVICE}_#{SELECTED_ENV}.png"
    caminho_screenshot  = "./#{SCREENSHOT_PATH}" + foto
    driver.save_screenshot(caminho_screenshot)
    attach(caminho_screenshot, 'image/png')
  end

end

World ScreenshotHelper
