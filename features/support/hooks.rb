# Configura o que acontece antes e depois do projeto


# Antes do projeto: Esperar 10 segundos e fechar a pagina

Before do |scenario|
    Capybara.default_max_wait_time = 10
    page.driver.quit

end

# Depois do projeto: retirar strings do nome e tirar print

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'Failed')
    else
        print_screen(scenario_name.downcase!, 'Sucess')
    end    
end