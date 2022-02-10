module ScreenshotHelper

  def screenshot_erro(name_step_erro)
    data_e_hora         = Time.now.strftime('%Y-%m-%d_-_%H-%M-%S-%L').to_s
    foto                = "#{data_e_hora}_-_#{SELECTED_DEVICE}_#{SELECTED_ENV}_ERRO_#{name_step_erro}.png"
    caminho_screenshot  = "./#{SCREENSHOT_PATH}" + foto
    screen_saved        = driver.save_screenshot(caminho_screenshot)
    img_base64          = Base64.encode64(File.open(screen_saved, "r:UTF-8", &:read))
    attach(img_base64, 'image/png;base64')
  end

  def screenshot
    sleep 1
    data_e_hora         = Time.now.strftime('%Y-%m-%d_-_%H-%M-%S-%L').to_s
    foto                = "#{data_e_hora}_-_#{SELECTED_DEVICE}_#{SELECTED_ENV}.png"
    caminho_screenshot  = "./#{SCREENSHOT_PATH}" + foto
    screen_saved        = driver.save_screenshot(caminho_screenshot)
    img_base64          = Base64.encode64(File.open(screen_saved, "r:UTF-8", &:read))
    attach(img_base64, 'image/png;base64')
  end

end

World ScreenshotHelper
