Feature:
  As an interested craftsman
  I want to see the events on the DCN website
  So that I can inform and perhaps register me.

  Scenario: Show two upcoming events
    When I'm on the homepage
    Then I see 2 upcoming events

  Scenario: Event details
    When I'm on the homepage
    Then the first event shows the title "Behaviour Driven Development (Live-Coding-Session)"
    And the first event shows the date "15.06.2021"
    And the first event links to Meetup
