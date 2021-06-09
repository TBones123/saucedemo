
Given('I visit inventory Page') do
  @inventory_page = InventoryPage.new
  @inventory_page.iventoryPagebyStandartUser
  @sort_selector = @inventory_page.find('.right_component span select')
  @base_name_items = ["Sauce Labs Backpack", "Sauce Labs Bike Light", "Sauce Labs Bolt T-Shirt", "Sauce Labs Fleece Jacket", "Sauce Labs Onesie", "Test.allTheThings() T-Shirt (Red)"]
  @base_price_items = ["$7.99", "$9.99", "$15.99", "$15.99", "$29.99", "$49.99"]
end

When('I select sort by A to Z') do
  @inventory_page.sort_section.name_A_to_Z.click
  expect(@sort_selector.value).to eq 'az'
end

Then('I should see sort by A to Z') do
  @name_items = @inventory_page.inventory_section.name_items.map(&:text)
  expect(@name_items).to eq @base_name_items
end

When('I select sort by Z to A') do
  @inventory_page.sort_section.name_Z_to_A.click
  expect(@sort_selector.value).to eq 'za'
end

Then('I should see sort by Z to A') do
   @name_items = @inventory_page.inventory_section.name_items.map(&:text)
  expect(@name_items).to eq @base_name_items.reverse
end

When('I select sort by low to hight') do
  @inventory_page.sort_section.price_Low_to_Hight.click
  expect(@sort_selector.value).to eq 'lohi'
end

Then('I should see sort low to hight') do
  @price_items = @inventory_page.inventory_section.price_items.map(&:text)
  expect(@price_items).to eq @base_price_items
end

When('I select sort by hight to low') do
  @inventory_page.sort_section.price_Hight_to_Low.click
  expect(@sort_selector.value).to eq 'hilo'
end

Then('I should see sort hight to low') do
  @price_items = @inventory_page.inventory_section.price_items.map(&:text)
  expect(@price_items).to eq @base_price_items.reverse
end
