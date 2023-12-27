# BDD
Dado('que eu acesse a página home') do
    home.load #carrega a pagina principal do Qa coders
  end
  
  Quando('clico no menu {string}') do |menu_item|
    home.click_button_menu(menu_item) #Clica em cada um dos itens do Menu
  end
  
  Então('deverei ser redirecionado para a sessão {string}') do |sessao|
    home.validation_menu(sessao) #Valida se foi redirecionado para o item do Menu correspondente
  end