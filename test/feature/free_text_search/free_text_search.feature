Feature: Free text search

  'Catalogue' refers to all available songs in our system.

  Background:
    Given the app is running

  Scenario: Landing on the free text page
    Given I'm on the Free Text Search page
    Then the text search is empty
    And I can't search for songs

  Scenario: Filled search text
    Given I'm on the Free Text Search page
    When I enter text {'Day'} as search text
    Then I can search for songs

  Scenario: Empty search text
    Given I'm on the Free Text Search page
    And I enter text {'Day'} as search text
    When I enter text {''} as search text
    Then I can't search for songs

  Scenario: No songs suggestions
    Given song <song> by artist <artist> is in the catalogue
      | song                   | artist            |
      | 'A Day In The Life'    | 'Beatles'         |
      | 'Things We Said Today' | 'Beatles'         |
      | 'Day Dreaming'         | 'Aretha Franklin' |
    And I'm on the Free Text Search page
    And I enter text {'Night'} as search text
    When I search for songs
    Then I'm informed that there were no songs suggestions

  Scenario Outline: Matching songs suggestions
    Given song <song> by artist <artist> is in the catalogue
      | song                   | artist            |
      | 'A Day In The Life'    | 'Beatles'         |
      | 'Things We Said Today' | 'Beatles'         |
      | 'Day Dreaming'         | 'Aretha Franklin' |
    And I'm on the Free Text Search page
    And I enter text <text> as search text
    When I search for songs
    Then I see songs suggestions <suggestions>
    Examples:
      | text      | suggestions                                                   |
      | 'Day'     | ['A Day In The Life', 'Things We Said Today', 'Day Dreaming'] |
      | 'Day in'  | ['A Day In The Life']                                         |
      | 'Beatles' | ['A Day In The Life', 'Things We Said Today']                 |