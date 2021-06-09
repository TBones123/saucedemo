#encoding: UTF-8

feature 'saucedemo inventory page' do
  let(:login_page) { LoginPage.new }
  let(:inventory_page) { InventoryPage.new }

  let(:user_name) { 'standard_user' }
  let(:password) { 'secret_sauce' }
  let(:sort_selector) { inventory_page.find('.right_component span select') }
  let(:name_items) { inventory_page.name_items.map(&:text) }
  let(:price_items) { inventory_page.price_items.map(&:text) }
  let(:base_name_items) { ["Sauce Labs Backpack", "Sauce Labs Bike Light", "Sauce Labs Bolt T-Shirt", "Sauce Labs Fleece Jacket", "Sauce Labs Onesie", "Test.allTheThings() T-Shirt (Red)"] }
  let(:base_price_items) {["$7.99", "$9.99", "$15.99", "$15.99", "$29.99", "$49.99"]}

  before(:each) do
    inventory_page.iventoryPagebyStandartUser
  end

  describe 'Inventory section' do
    scenario 'check sort by name A to Z' do
      inventory_page.select_container.find("option[value='az']").click
      expect(sort_selector.value).to eq 'az'
      expect(name_items).to eq base_name_items
    end

    scenario 'check sort by name Z to A' do
      inventory_page.select_container.find("option[value='za']").click
      expect(sort_selector.value).to eq 'za'
      expect(name_items).to eq base_name_items.reverse
    end

    scenario 'check sort by low price' do
      inventory_page.select_container.find("option[value='lohi']").click
      expect(sort_selector.value).to eq 'lohi'
      expect(price_items).to eq base_price_items
    end

    scenario 'check sort by hight price' do
      inventory_page.select_container.find("option[value='hilo']").click
      expect(sort_selector.value).to eq 'hilo'
      expect(price_items).to eq base_price_items.reverse
    end
  end
end
