#encoding: UTF-8
feature 'saucedemo inventory page' do
  let(:inventory_page) { InventoryPage.new }
  let(:cart_page) { CartPage.new }
  let(:name_item_backpack) { cart_page.inventory_item_name_backpack}
  let(:name_item_bike) { cart_page.inventory_item_name_bike}

  before(:each) do
    inventory_page.iventoryPagebyStandartUser
  end

  describe 'Inventory section' do
    scenario "Visit the shopping cart" do
      inventory_page.primary_header.shoping_cart.click
      expect(cart_page).to have_selector('#cart_contents_container')

    end
    scenario "Assert that the items that you added are in the cart" do
      inventory_page.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      expect(cart_page).to have_selector '.cart_item', text: 'Sauce Labs Backpack'
    end
    scenario "Remove an item and then continue shopping" do
      inventory_page.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      cart_page.remove_button.click
      expect(cart_page).not_to have_selector '.cart_item', text: 'Sauce Labs Backpack'
      cart_page.continue_shopping_button.click
      expect(inventory_page).to have_selector('#inventory_container .inventory_list')
    end
    scenario "Add to cart another item" do
      inventory_page.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      cart_page.continue_shopping_button.click
      inventory_page.add_button_bike_light.click
      inventory_page.primary_header.shoping_cart.click
      expect(cart_page).to have_selector '.cart_item', text: 'Sauce Labs Backpack'
      expect(cart_page).to have_selector '.cart_item', text: 'Sauce Labs Bike Light'
    end
  end
end
