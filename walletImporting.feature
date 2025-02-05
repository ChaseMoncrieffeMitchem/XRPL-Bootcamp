Feature: Wallet Importing
    As a new user, 
    I want to connect my existing wallet to the application,
    So that I can engage with the game with my tokens in my wallet

Scenario: Successful Wallet Importing
    Given I attempting to use the RPS application,
    When I connect my wallet to the application,
    Then I should see a success message,
    And I should be able to see my account balance

Scenario: Failure to Import Wallet
    Given I am attempting to use the RPS application,
    When I connect my wallet to the application,
    Then I should see a failure message,
    And I should not be able to see any account balance