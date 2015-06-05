[![Build Status](https://travis-ci.org/Gwasanaethau/new-calendar.svg?branch=master)](https://travis-ci.org/Gwasanaethau/new-calendar)
[![Coverage Status](https://coveralls.io/repos/Gwasanaethau/new-calendar/badge.svg?branch=master)](https://coveralls.io/r/Gwasanaethau/new-calendar?branch=master)
[![Code Climate](https://codeclimate.com/github/Gwasanaethau/new-calendar/badges/gpa.svg)](https://codeclimate.com/github/Gwasanaethau/new-calendar)

### New Calendar ###

#### Purpose ####

A proof-of-concept for generating a date based on strict day/week/month/year relationships, completely ignoring solar and lunar timings/conventions. This project is designed more for practice with TDD and RSpec/Cucumber testing suites than having any real purpose.

#### Overview ####

The idea behind the project is that months in the Gregorian Calendar have varying lengths, partially due to historic reasons, and partially due to scientific reasons (leap-years, for example). I have figured that keeping month lengths completely constant allows for a rigid hierarchy of time-lengths, much like any other measurement system (particularly the imperial system). Thus:

```
60 seconds = 1 minute
60 minutes = 1 hour
24 hours = 1 day
7 days = 1 week
4 weeks = 1 month
13 months = 1 year
```

And consequently:

```
28 days = 1 month
364 days = 1 year
52 weeks = 1 year
```
