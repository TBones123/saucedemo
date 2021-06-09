@login
Feature: Login field testing
  As a standard_user
  I want login to the site

  Background:
    Given I visit login Page
@positive
  Scenario: Positive test for login field
    When I set 'standard_user' value in username field
      And I set 'secret_sauce' value in password field
      And I click on login button
    Then I shouldnt see the message 'Epic sadface: Username and password do not match any user in this service' on login page
@negative
  Scenario: Negative test for login field
    When I set 'locked_out_user' value in username field
      And I set '123' value in password field
      And I click on login button
    Then I should see the message 'Epic sadface: Username and password do not match any user in this service' on login page
