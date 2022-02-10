require 'appium_lib'
require 'rspec'
require 'rspec/matchers'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'report_builder'
require 'json'

## Global
World RSpec::Matchers

## Definiçoes de Ambiente
# escolhido em cucumber.yml
# prod, dev, qa
SELECTED_ENV = ENV['ENV']
if SELECTED_ENV.blank?
  raise "Constante ENV está vazia.\nPor favor, especificar Ambiente: (prod, dev, qa).\nEx.:\n  $ cucumber ENV=qa\n    ou\n  $ cucumber -p qa\n\n"
  RSpec.configure do |config|
    config.filter_run_excluding type: :feature
  end
end

## Defaults
ENVIRONMENT      = YAML.load_file(File.dirname(__FILE__) + "/config/environments.yml")[SELECTED_ENV]
SCREENSHOT_PATH  = "reports/screenshots/"
REPORT_PATH      = "reports/report-builder/"
# APP_PATH = File.join(File.dirname(__FILE__ ), ("apps/" + ENVIRONMENT['app_path']))

## Definiçoes de Devices
# escolhido em cucumber.yml
# Android e iOS
SELECTED_DEVICE = ENV['DEVICE']
case SELECTED_DEVICE
when nil
  raise "Constante DEVICE está vazia.\nPor favor, especificar Device: (Android ou iOS).\nEx.:\n  $ cucumber DEVICE=android\n    ou\n  $ cucumber -p android\n\n"
  RSpec.configure do |config|
    config.filter_run_excluding type: :feature
  end
when "android"
  $caps = {
    caps: {
      platformName: "Android",
      platformVersion: "11.0",
      deviceName: "device",
      # app: APP_PATH,
      noReset: false,
      fullReset: false,
      ensureWebviewsHavePages: "true",
      autoGrantPermissions: "true",
      newCommandTimeout: "3600"
    },
    appium_lib: {
      wait: 5
    }
  }
end

## Helpers
Dir[File.join(
  File.dirname(__FILE__), '/helpers/*.rb')
].each do |file|
  require_relative file
end

## Execucao dos testes
Appium::Driver.new($caps, true)
Appium.promote_appium_methods Object
