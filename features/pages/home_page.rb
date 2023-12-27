class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    set_url '/'

    ## Mapeamento dos Elementos do Menu da Pagina Qa coders

    # Menu

    element :menu_item_sobre, :xpath, '//p[text()="Sobre"]'
    element :menu_item_serviços, :xpath, '//p[@class="sc-kbUMEY llGxuN"]'

    #Validações

    element :titulo_sobre_nos, :xpath, '//p[text()="Sobre nós"]'
    element :titulo_serviços, :xpath, '//<h3[text()="Soluções Personalizadas"]'


    ## Função para clicar nos itens do Menu

    def click_button_menu(menu_item)
            
        case menu_item
        when menu_item
            menu_item_sobre.click
        when menu_item
            menu_item_serviços.click
        else 
            raise "Elemento do Menu não encontrado: #{menu_item}."
            
        end
    end

    # Função para validar os titulos do Menu
    # Valida se os titulos do Menu correspondem as sessões

    def validation_menu(sessao)
        case sessao
        when sessao
            expect(titulo_sobre_nos).to have_text(sessao)
        when sessao
            expect(titulo_serviços).to have_text(sessao)
        else
            raise "Elemento não encontrado: #{menu_item}"
        end
    end

end
