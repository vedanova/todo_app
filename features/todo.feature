Feature: As a user
  I want to manage me todos

  Background:
    Given I am on the homepage
    Given I have 2 todos


  Scenario: When I view my todos I should see all todos
    Given I go to my todos
      Then I should see all my todos
