# frozen_string_literal: true

# declarar o que vou usar no projeto

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
# require_relative 'hooks.rb'

# definir os ambientes globais
AMBIENTE = ENV['AMBIENTE']

# carregar o arquivo yml
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

# definir o modulo como global
World(Helper)
World(Pages)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_padrao']
  config.default_max_wait_time = 5
end
