@javascript
Feature: Basic CRUD scenarios

  Background: On data grid panel
    Given These Customer data exist:
      | Name            | Address            | Description            |
      | Customer Name 1 | Customer Address 1 | Customer Description 1 |
    When I go to the admin page
    And I click "Customer" on Navigation panel

  Scenario: View
    Then I should see "Customer Name 1"
    And I should see "Customer Address 1"
    And I should see "Customer Description 1"

  Scenario: Delete
    When I select the 1st row on the grid view
    And I press "Delete"
    Then I should not see "Customer Name 1"
    When I press "Save"
    Then the Customer data should be empty

  Scenario: Edit
    When I select the 1st row on the grid view
    And I press "Edit"
    And I fill in "name" with "Modified customer name"
    And I press "Update"
    Then I should see "Modified customer name"
    When I press "Save"
    Then This Customer data should exists:
      | Name                   | Address            | Description            |
      | Modified customer name | Customer Address 1 | Customer Description 1 |

  Scenario: Add
    When I press "Add"
    And I fill in "name" with "Customer Name 2"
    And I fill in "address" with "Customer Address 2"
    And I fill in "description" with "Customer Description 2"
    And I press "Update"
    Then I should see "Customer Name 2"
    And I should see "Customer Address 2"
    And I should see "Customer Description 2"
    When I press "Save"
    Then This Customer data should exists:
      | Name            | Address            | Description            |
      | Customer Name 2 | Customer Address 2 | Customer Description 2 |
