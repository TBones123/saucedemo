class CartPage < SitePrism::Page
  set_url('https://www.saucedemo.com/cart.html')
  element :remove_button, '#remove-sauce-labs-backpack'
  element :continue_shopping_button, '#continue-shopping'
end
