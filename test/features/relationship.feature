@javascript
Feature: Relationship between models

  Background: On data grid panel
    Given These Customer data exist:
      | Name            | Address            | Description            |
      | Customer Name 1 | Customer Address 1 | Customer Description 1 |
      | Customer Name 2 | Customer Address 2 | Customer Description 2 |
    When I go to the admin page
    And I click "Sale" on Navigation panel
    And I wait until "Sale" tab is ready

  Scenario: "Belongs to" relation
    When I press "Add"
    And I select "Customer Name 1" from "customer_id" combo box
    And I fill in "sale_date" with "2011-08-01"
    And I fill in "delivery_address" with "27 Blah Street"
    And I press "Update"
    When I press "Save"
    And I wait until the saving process finish

    Then This Sale data should exists:
      | Customer.Name   | Delivery Address |
      | Customer Name 1 | 27 Blah Street   |
