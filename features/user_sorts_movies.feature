Feature: Sorting the list of all movies
  In order to improve my search
  As an user
  I want to be able to sort the movies

  Scenario: Sort movies by title
    Given I want to search for a movie
    When I go to movies page
    Then I should see a link "Movie Title" with id "title_header"
    And I should see a link "Release Date" with id "release_date_header"
