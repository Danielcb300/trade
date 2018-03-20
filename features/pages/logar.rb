class Logar < SitePrism::Page
    
    set_url 'https://tc.tradersclub.com.br/login'

    element :username_field, '#loginId'
    element :password_field, '#password'
    element :button_login, '#loginButton'

    def logar(username,password)
        username_field.set(username)
        password_field.set(password)
        button_login.click
    end
end
