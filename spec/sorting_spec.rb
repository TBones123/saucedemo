#encoding: UTF-8

feature 'saucedemo inventory page' do
  let(:login_page) { LoginPage.new }
  let(:inventory_page) { InventoryPage.new }

  let(:user_name) { 'standard_user' }
  let(:password) { 'secret_sauce' }
  let(:sort_selector) { inventory_page.find('.right_component span select') }
  let(:name_items) { inventory_page.inventory_section.name_items.map(&:text) }
  let(:price_items) { inventory_page.inventory_section.price_items.map(&:text) }
  let(:base_name_items) { ["Sauce Labs Backpack", "Sauce Labs Bike Light", "Sauce Labs Bolt T-Shirt", "Sauce Labs Fleece Jacket", "Sauce Labs Onesie", "Test.allTheThings() T-Shirt (Red)"] }
  let(:base_price_items) {["$7.99", "$9.99", "$15.99", "$15.99", "$29.99", "$49.99"]}

  before(:each) do
    inventory_page.iventoryPagebyStandartUser
    # login_page.load
    # login_page.login_section.username_field.set user_name
    # login_page.login_section.password_field.set password
    # login_page.login_section.login_button.click
  end

  # Array.from(document.querySelectorAll('.inventory_item_name')).map((el)=>{return el.textContent})


  describe 'Inventory section' do
    scenario 'check sort by name A to Z' do
      inventory_page.sort_section.name_A_to_Z.click
      expect(sort_selector.value).to eq 'az'
      expect(name_items).to eq base_name_items
    end

    scenario 'check sort by name Z to A' do
      inventory_page.sort_section.name_Z_to_A.click
      expect(sort_selector.value).to eq 'za'
      expect(name_items).to eq base_name_items.reverse
    end

    scenario 'check sort by low price' do
      inventory_page.sort_section.price_Low_to_Hight.click
      expect(sort_selector.value).to eq 'lohi'
      expect(price_items).to eq base_price_items
    end

    scenario 'check sort by hight price' do
      inventory_page.sort_section.price_Hight_to_Low.click
      expect(sort_selector.value).to eq 'hilo'
      expect(price_items).to eq base_price_items.reverse
    end
  end
end
