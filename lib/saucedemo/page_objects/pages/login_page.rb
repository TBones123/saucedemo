class LoginPage < SitePrism::Page
  set_url('https://www.saucedemo.com/')
  section :login_section, LoginSection, '#login_button_container > div'
end
