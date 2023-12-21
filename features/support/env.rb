# Importaçao das dependencias instaladas

require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helpers.rb'
require_relative 'page_helpers.rb'
require_relative 'hooks.rb'

# Imprime o ambiente executado na tela

ENVIRONMENT = ENV['ENVIRONMENT']

puts "Environment >> #{ENVIRONMENT}"

# Configuraçao dos arquivos .yml da pasta environments
# Permite ler a partir da pasta raíz todos os diretorios

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

# Carrega os modulos Pages e Helper

World(Pages, Helper)

# Configuração do Capybara

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 10
end

