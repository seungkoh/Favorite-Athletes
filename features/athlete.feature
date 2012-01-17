Feature: My favorite athlete
  In order to keep track of current athlete profiles
  As a sports fan
  I should be able to create, inspect, edit, and delete athlete info

Scenario: Trading athlete to other team
  Given I am currently tracking a player named Lebron James
  And he is playing for the Cleveland Cavaliers
  When he is traded
  Then his team should be updated to the Miami Heat
  