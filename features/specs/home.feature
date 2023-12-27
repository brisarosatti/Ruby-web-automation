#language: pt

Funcionalidade: Menu

Esquema do Cenario: Validar o redirecionamento dos links do Menu da página Home

    Dado que eu acesse a página home
    Quando clico no menu <menu_item>
    Então deverei ser redirecionado para a sessão <sessao>

    Exemplos: 
    | menu_item       | sessao           |
    | 'Sobre'         | 'Sobre nós'      |
    | 'Serviços'      | 'Serviços'       |
    | 'Conexões'      | 'Conexões'       |
    | 'Reconhecimento'| 'Reconhecimento' |
    | 'Fale Conosco'  | 'Fale Conosco'   |
    
