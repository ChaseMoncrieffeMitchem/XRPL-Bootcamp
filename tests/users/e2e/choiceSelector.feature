Feature: Choose Rock Paper or Scissors
    As a User with Connected Wallet, 
    I want to be able to choose either Rock Paper or Scissors,
    So that choice is documented on my account

Scenario: Successfully have Rock Paper or Scissors documented on account
    Given I am a user with Connected Wallet,
    When I choose either Rock, Paper, or Scissors,
    Then that choice should be documented as my choice,
    And sent off to the Game Logic System

Scenario: Failure to choose Rock Paper or Scissors
    Given I am a user without a Connected Wallet,
    When I choose either Rock Paper or Scissors,
    Then I should see a message saying I need to connect a wallet first,
    And my choice is not sent off to the Game Logic System

