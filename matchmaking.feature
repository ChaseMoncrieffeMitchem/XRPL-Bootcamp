Feature: I am connected to another Player to play RPS with 
    As a user with a Connected Wallet, 
    I can be connected to another Player with a Connected Wallet, 
    So that we can play RPS with each other head to head

Scenario: Successful Match with another Player with Connected Wallet
    Given I am a CW Player, 
    When I attempt to enter the RPS Matchmaking arena,
    Then I should be matched with another CW Player in the arena,
    And we should be able to play RPS against each other

Scenario: Failure to Match with another Player with Connected Wallet - no one available to play with
    Given I am a CW Player, 
    When I attempt to enter the RPS Matchmaking arena,
    Then I should be given a message that no one is available to play, 
    And I will not be able to play RPS with anyone

    