Given('I visit login Page') do
  @login_page = LoginPage.new
  @login_page.load
  # let(:error_string) { 'Epic sadface: Username and password do not match any user in this service' }

end

When(/^I set '([^"]*)' value in username field$/) do |username|
  @login_page.login_section.username_field.set username
end

When(/^I set '([^"]*)' value in password field$/) do |password|
  @login_page.login_section.password_field.set password
end

When('I click on login button') do
  @login_page.login_section.login_button.click
end

Then(/^I shouldnt see the message '([^"]*)' on login page$/) do |error_string|
  expect(@login_page).not_to have_content error_string
end

Then(/^I should see the message '([^"]*)' on login page$/) do |error_string|
  expect(@login_page).to have_content error_string
end
