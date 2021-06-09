class InventorySection < SitePrism::Section
elements :name_items, '.inventory_item_name'
elements :price_items, '.inventory_item_price'
element :add_button_backpack, '#add-to-cart-sauce-labs-backpack'
element :add_button_bike_light, '#add-to-cart-sauce-labs-bike-light'
end
