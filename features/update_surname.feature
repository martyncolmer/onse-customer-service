Feature: Update the surname based on ID
  As a service I want to update the customer surname

  Scenario: Updating the customer surname
    Given customer "Nicole Forsgren" with ID "12345" exists
    And I update the surname for customer "12345" to "Jones"
    When I fetch customer "12345"
    Then I should see customer "Nicole Jones"
