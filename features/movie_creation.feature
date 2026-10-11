Feature: Create a movie with a director
  As a movie buff
  I want to add movies with director information
  So that I can search for them later

  Scenario: Create a new movie
    Given I am on the home page
    When I follow "Add new movie"
    And I fill in "Title" with "The Martian"
    And I select "PG-13" from "Rating"
    And I fill in "Director" with "Ridley Scott"
    And I press "Save Changes"
    Then I should be on the home page
    And I should see "The Martian"
    And I should see "The Martian was successfully created."
