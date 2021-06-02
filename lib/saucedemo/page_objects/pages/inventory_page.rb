
class InventoryPage < SitePrism::Page
  set_url('https://www.saucedemo.com/inventory.html')
  # section :inventory_section, InventorySection, '#inventory_container'
  section :sort_section, SortSection, '#header_container > div.header_secondary_container > div.right_component'
  section :inventory_section, InventorySection, '#inventory_container .inventory_list'
  section :primary_header, HeaderSection, '#header_container'
  def iventoryPagebyStandartUser
    user_name = 'standard_user'
    password = 'secret_sauce'
    login_page = LoginPage.new
    login_page.load
    login_page.login_section.username_field.set user_name
    login_page.login_section.password_field.set password
    login_page.login_section.login_button.click
  end
end
