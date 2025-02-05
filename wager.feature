Feature: Choose how much xrp you want to wager before playing RPS
    As a CW Player,
    I want to be able to choose how much xrp from my account I want to wager on RPS
    So that I can play RPS with that amount of xrp

Scenario: I successfully wager an amount of xrp equal to a less than my total xrp balance
    Given I am a CW player, 
    And I choose to wager 10 xrp when I have a total balance of 100 xrp,
    Then that 10 xrp amount is sent with me to the Matchmaking arena,
    And I am able to begin Matchmaking with 10 xrp ready to be played with

Scenario: I attempt to wager an amount over the amount of xrp in my total wallet balance
    Given I am a CW Player, 
    And I choose to wager 1000 xrp when I only have 100 xrp in my wallet,
    Then I will see a message telling me to wager a lower amount of xrp,
    And I will be prompted to choose an amount lower than my account balance
    