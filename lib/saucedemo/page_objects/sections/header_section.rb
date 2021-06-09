class HeaderSection < SitePrism::Section
  element :shoping_cart, '#shopping_cart_container'
  element :menu_button, '#react-burger-menu-btn'
  elements :item_list, '.bm-item-list'
end
