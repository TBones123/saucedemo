class LoginPage < SitePrism::Page
  set_url('https://www.saucedemo.com/')
  # section :login_section, LoginSection, '#login_button_container > div'
  element :username_field, '#user-name'
  element :password_field, '#password'
  element :login_button, '#login-button'
end



