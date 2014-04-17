Feature: As a user
  I want to manage me todos

  Background:
    Given I am on the homepage
    Given I have 2 todos

  @javascript
  Scenario: I view my todos I should see all todos
    Given I go to my todos
      Then I should see all my todos

  @javascript
  Scenario: I add a new todo
    Given I am on the todos page
      And I add a new todo with name "Buy groceries"
    Then I should see "Buy groceries" in the todo list
      And I should see "Todo was successfully created"

  @javascript
  Scenario: I want to delete a todo
    Given I am on the todos page
      And I delete the first todo
    Then I should not see the todo anymore
      And I should see "Todo was successfully deleted"