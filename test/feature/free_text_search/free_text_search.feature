Feature: Free text search

    Background:
        Given I'm on the Free Text Search screen

    Scenario: Empty text search
        Given the text search is empty
        Then I can't search for songs

    Scenario: No songs suggestions
        Given there are no songs suggestions for text {"A day in life"}
        And I enter text {"A day in life"}
        When I search for songs
        Then I'm informed that there were no songs suggestions

    Scenario: Matching songs suggestions
        Given songs suggestions <suggestions> for text <text>
            | suggestions                                                                                                      | text            |
            | ["The Beatles - A day in life" ,"The Beatles - A day in life LIVE", "The Beatles - A day in life [Bass track]" ] | "A day in life" |
        And I enter {"A day in life"}
        When I search for songs
        Then is see suggestions <suggestions>
            | suggestions                                                                                                      |
            | ["The Beatles - A day in life" ,"The Beatles - A day in life LIVE", "The Beatles - A day in life [Bass track]" ] |
