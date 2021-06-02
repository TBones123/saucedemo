#encoding: UTF-8
feature 'saucedemo inventory page' do
  let(:inventory_page) { InventoryPage.new }
  let(:cart_page) { CartPage.new }
  let(:name_item) { cart_page.cart_contents_container.inventory_item_name }
  let(:base_name_item) { 'Sauce Labs Backpack' }
  before(:each) do
    inventory_page.iventoryPagebyStandartUser
  end

  describe 'Inventory section' do

    scenario "Visit the shopping cart" do
      inventory_page.primary_header.shoping_cart.click
      expect(cart_page)
    end

    scenario "Assert that the items that you added are in the cart" do
      inventory_page.inventory_section.add_button_backpack.click
      inventory_page.primary_header.shoping_cart.click
      expect(name_item).to have_content base_name_item
      # sleep 500
    end
  end
end
