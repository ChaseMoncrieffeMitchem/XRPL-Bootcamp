Feature: Tokens Distributed based on a Win Loss or Tie
    As a CW Player that has played a game with another CW Player, 
    I should have a designation of Winner, Loser, or Tie, 
    So that I can be disbursed tokens based on a Win Loss or Tie designation

Scenario: I have a Win designation
    Given I have a Win designation,
    Then I should be given the tokens from the CW Player with Loser designation

Scenario: I have a Loser designation
    Given I have a Loser designation,
    Then I should give up my tokens to the CW Player with Win designation

Scenario: I have a Tie designation
    Given I am a CW player with a Tie designation,
    Then no tokens should be added or taken from my account