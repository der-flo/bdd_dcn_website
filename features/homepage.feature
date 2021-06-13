Feature: Homepage
  As an interested craftsman
  I want to inform me about this community
  So that I can decide to participate in some form.

  Scenario: Some introductory content
    Given I'm on the homepage
    Then I see some text paragraphs
    And I see the DCN logo

  Scenario: Team
    Given I'm on the homepage
    Then I see photos of 4 grinning craftsmen

  @javascript
  Scenario: Meetup link
    Given I'm on the homepage
    When I click on "Meetup"
    Then I'm on the DCN meetup page
