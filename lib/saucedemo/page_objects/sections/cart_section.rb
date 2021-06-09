class CartSection < SitePrism::Section
  element :inventory_item_name_backpack, '#item_4_title_link > div '
  element :inventory_item_name_bike, '#item_0_title_link > div '
  element :remove_button, '#remove-sauce-labs-backpack'
  element :continue_shopping_button, '#continue-shopping'
end
