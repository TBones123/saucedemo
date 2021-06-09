Feature: saucedemo inventory page
  As a standard_user
  I want check sorting inventory
  Background:
    Given I visit inventory Page
  Scenario: check sort by name A to Z
    When I select sort by A to Z
    Then I should see sort by A to Z
  Scenario: check sort by name Z to A
    When I select sort by Z to A
    Then I should see sort by Z to A
  Scenario: check sort by low price
    When I select sort by low to hight
    Then I should see sort low to hight
  Scenario: check sort by hight price
    When I select sort by hight to low
    Then I should see sort hight to low
