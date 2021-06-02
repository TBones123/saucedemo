class LoginSection < SitePrism::Section
  element :username_field, '#user-name'
  element :password_field, '#password'
  element :login_button, '#login-button'
end
