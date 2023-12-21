# Procura na pasta raíz dentro da pasta pages os arquivos "page.rb"

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

# Acessar as propriedades e tornar publica para o projeto

module Pages

    def home
        @home ||= Home.new
    end

    def login
        @login ||= Login.new
    end
    
end