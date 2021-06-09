Given('I visit inventory Page1') do
  @inventory_page = InventoryPage.new
  @cart_page = CartPage.new
  @inventory_page.iventoryPagebyStandartUser

end

When('I click the Sauce Labs Backpack add button') do
  @inventory_page.inventory_section.add_button_backpack.click
end

When('I click on shoping cart') do
  @inventory_page.primary_header.shoping_cart.click
end

Then(/^I see '([^"]*)' in the shoping cart$/) do |base_backpack_item|
  name_item_backpack=@cart_page.cart_contents_container.inventory_item_name_backpack
  expect(name_item_backpack).to have_content base_backpack_item
end
When('I click on remove button') do
  @cart_page.cart_contents_container.remove_button.click
end

Then(/^I see '([^"]*)' remove in the shoping cart$/) do |base_backpack_item|
  expect(@cart_page.cart_contents_container).not_to have_content base_backpack_item
end

Then('I click on continue shopping button') do
  @cart_page.cart_contents_container.continue_shopping_button.click
end

Then('I see inventory page') do
  expect(@inventory_page).to have_selector('#inventory_container .inventory_list')
end

When('I click the Sauce Labs Bike Light add button') do
  @inventory_page.inventory_section.add_button_bike_light.click
end

Then('I see {string} and {string} in the shoping cart') do |base_backpack_item, base_bike_Light_item|
  name_item_backpack=@cart_page.cart_contents_container.inventory_item_name_backpack
  name_item_bike=@cart_page.cart_contents_container.inventory_item_name_bike
  expect(name_item_backpack).to have_content base_backpack_item
  expect(name_item_bike).to have_content base_bike_Light_item
end
