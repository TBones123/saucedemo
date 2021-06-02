class CartPage < SitePrism::Page
  set_url('https://www.saucedemo.com/cart.html')
  section :cart_contents_container, CartSection,'#cart_contents_container'

end
