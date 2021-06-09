
class InventoryPage < SitePrism::Page
  set_url('https://www.saucedemo.com/inventory.html')
  # section :inventory_section, InventorySection, '#inventory_container'
  element :select_container, '.select_container'
  elements :name_items, '.inventory_item_name'
  elements :price_items, '.inventory_item_price'
  element :add_button_backpack, '#add-to-cart-sauce-labs-backpack'
  element :add_button_bike_light, '#add-to-cart-sauce-labs-bike-light'
  section :primary_header, HeaderSection, '#header_container'
  def iventoryPagebyStandartUser
    user_name = 'standard_user'
    password = 'secret_sauce'
    login_page = LoginPage.new
    login_page.load
    login_page.username_field.set user_name
    login_page.password_field.set password
    login_page.login_button.click
  end
end
