Feature: Determine Win Loss or Tie based on 2 RPS choices
    As a user with Connected Wallet,
    Once myself and another Connected Wallet Player are Matched together,
    I want to be able to pick RPS,
    So that the game of RPS is played with another CW Player and I am given a designation of Win Loss or Tie

Scenario: Win RPS with Rock
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Rock,
    And the other CW Player chooses Scissors,
    Then I should be given a designation of Winner

Scenario: Win RPS with Paper
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Paper,
    And the other CW Player chooses Rock,
    Then I should be given a designation of Winner

Scenario: Win RPS with Scissors
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Scissors,
    And the other CW Player chooses Paper,
    Then I should be given a designation of Winner

Scenario: Lose RPS with Rock
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Rock,
    And the other CW Player chooses Paper,
    Then I should be given a designation of Loser

Scenario: Lose RPS with Paper
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Paper,
    And the other CW Player chooses Scissors,
    Then I should be given a designation of Loser

Scenario: Lose RPS with Scissors
    Given I am a CW Player, 
    When I get connected with another CW Player, 
    And I choose Scissors,
    And the other CW Player chooses Rock,
    Then I should be given a designation of Loser

Scenario: Tie RPS 
    Given I am a CW Player, 
    When I get connected to another CW Player, 
    And I choose the same choice the other CW Player chooses,
    Then I should be given a designation of Tie