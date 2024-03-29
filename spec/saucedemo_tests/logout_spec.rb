#encoding: UTF-8
feature 'saucedemo inventory page' do
  let(:inventory_page) { InventoryPage.new }

  before(:each) do
    inventory_page.iventoryPagebyStandartUser
  end

  describe 'header section, menu_button test logout' do
    scenario "logout" do
      inventory_page.primary_header.menu_button.click
      inventory_page.primary_header.find('#logout_sidebar_link').click
      expect(page).to have_selector('#login_button_container')
    end
  end
end
