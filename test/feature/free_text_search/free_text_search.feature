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
        Given loading songs suggestions for text <text> returns <suggestions>
            | text            | suggestions                                                            |
            | "A day in life" | ["A day in life" ,"A day in life LIVE", "A day in life (Bass track)" ] |
        And I enter {"A day in life"}
        When I search for songs
        Then I see suggestions <suggestions>
            | suggestions                                                            |
            | ["A day in life" ,"A day in life LIVE", "A day in life (Drums track)" ] |