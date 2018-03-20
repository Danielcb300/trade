class Validar < SitePrism::Page

    element :validador, :xpath, '//*[@id="channelHeaderDropdown"]'

    def validar_login
        validador.click
    end
end