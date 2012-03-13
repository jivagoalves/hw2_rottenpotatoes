Feature: Sorting the list of all movies
  In order to improve my search
  As an user
  I want to be able to sort the movies

  Scenario: Sort movies by title
    Given I want to search for a movie
    When I go to movies page
    Then I should see the link "Movie Title"
    And I should see the link "Release Date"
