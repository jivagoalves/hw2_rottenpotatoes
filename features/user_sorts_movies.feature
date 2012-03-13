Feature: Sorting the list of all movies
  In order to improve my search
  As an user
  I want to be able to sort the movies

  Scenario: User goes to movies page
    Given I want to search for a movie
    When I go to movies page
    Then I should see a link "Movie Title" with id "title_header"
    And I should see a link "Release Date" with id "release_date_header"

  Scenario Outline: User receives feedback about header link
    Given I am on movies page
    When I click on the header link <link_id>
    Then I should see the link <link_id> highlighted

    Examples:
      |link_id              |
      |"title_header"       |
      |"release_date_header"|
