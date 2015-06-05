Feature: Coverting a Unix timestamp into a New Calendar string.
  In order to see the current date
  As a New Calendar user
  I want to convert a Unix timestamp into a New Calendar string

  Scenario: Unix timestamp to New Calendar string
    Given a Unix timestamp of "0"
    Then we see the short string of "00/00|00/00 00:00:00"
    And we see the unit string of "00yr 00mh 00wk 00dy 00hr 00mn 00sc"
    And we see the long string of "00:00:00, Monday, Luath, January 0"

# Luath
# Dara
# Láir
# Deireanach
