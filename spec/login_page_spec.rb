#encoding: UTF-8

feature 'saucedemo login page' do

  let(:login_page) { LoginPage.new }
  let(:used_username) { login_page.find("#login_credentials", :text => "standard_user") }
  let(:used_username_text) { used_username.text }
  let(:error_string) { 'Epic sadface: Username and password do not match any user in this service' }
  let(:password) { 'secret_sauce' }

  before(:each) { login_page.load }

  describe 'check valid data' do
    %w[standard_user problem_user performance_glitch_user].each do |user_name|
      scenario user_name do
        login_page.login_section.username_field.set user_name
        login_page.login_section.password_field.set password
        login_page.login_section.login_button.click
        expect(login_page).not_to have_content error_string
      end
    end
  end

  describe 'check invalid data' do
    %w[locked_out_user 1@3sasd ddd__].each do |user_name|
      %w[1 123 ASD123].each do |password|
        scenario "check invalid data: #{user_name} #{password}" do

          login_page.login_section.username_field.set user_name
          login_page.login_section.password_field.set password
          login_page.login_section.login_button.click
          expect(login_page).to have_content error_string
        end
      end
    end
  end
end
