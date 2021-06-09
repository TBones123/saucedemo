#encoding: UTF-8
feature 'saucedemo inventory page' do
  let(:inventory_page) { InventoryPage.new }
  let(:cart_page) { CartPage.new }
  let(:name_item_backpack) { cart_page.cart_contents_container.inventory_item_name_backpack}
  let(:name_item_bike) { cart_page.cart_contents_container.inventory_item_name_bike}
  let(:base_backpack_item) { 'Sauce Labs Backpack' }
  let(:base_bike_Light_item) { 'Sauce Labs Bike Light' }

  before(:each) do
    inventory_page.iventoryPagebyStandartUser
  end

  describe 'Inventory section' do

    xscenario "Visit the shopping cart" do
      inventory_page.primary_header.shoping_cart.click
      expect(cart_page).to have_selector('#cart_contents_container')
    end

    xscenario "Assert that the items that you added are in the cart" do
      inventory_page.inventory_section.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      expect(name_item_backpack).to have_content base_backpack_item
    end
    xscenario "Remove an item and then continue shopping" do
      inventory_page.inventory_section.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      cart_page.cart_contents_container.remove_button.click
      expect(cart_page.cart_contents_container).not_to have_content base_backpack_item
      cart_page.cart_contents_container.continue_shopping_button.click
      expect(inventory_page).to have_selector('#inventory_container .inventory_list')
    end
    xscenario "Add to cart another item" do
      inventory_page.inventory_section.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      cart_page.cart_contents_container.continue_shopping_button.click
      inventory_page.inventory_section.add_button_bike_light.click
      inventory_page.primary_header.shoping_cart.click
      expect(name_item_backpack).to have_content base_backpack_item
      expect(name_item_bike).to have_content base_bike_Light_item
    end
  end
end
