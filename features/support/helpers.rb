# Funçao para tirar print da tela  e salvar em uma pasta (Sucesso ou Falha)
#file_name: nome do arquivo que receberá - scenario
#result: Sucesso ou Falha

module Helper

    def print_screen(file_name, result)
        date = "#{Time.now.strftime("%Y/%B/%D")}"
        hour = "#{Time.now.strftime("%H-%M-%S")}"

        file_path = "report/screenshots/tests_#{result}"
        screenshot = "#{file_path}/#{date}/#{hour}/#{file_name}.png"
        page.save_screenshot(screenshot)
        attach(screenshot, 'image/png')
    end
end    