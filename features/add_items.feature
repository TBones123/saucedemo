Feature: Login field testing
  As a standard_user
  I want visit to the shopping cart

  Background:
    Given I visit inventory Page1
  Scenario: Assert that the items that you added are in the cart
    When I click the Sauce Labs Backpack add button
      And I click on shoping cart
    Then I see 'Sauce Labs Backpack' in the shoping cart
  Scenario: Remove an item and then continue shopping
    When I click the Sauce Labs Backpack add button
      And I click on shoping cart
      And I click on remove button
    Then I see 'Sauce Labs Backpack' remove in the shoping cart
      And I click on continue shopping button
    Then I see inventory page
  Scenario: Add to cart another item
    When I click the Sauce Labs Backpack add button
      And I click on shoping cart
      And I click on continue shopping button
      And I click the Sauce Labs Bike Light add button
      And I click on shoping cart
    Then I see "Sauce Labs Backpack" and "Sauce Labs Bike Light" in the shoping cart
