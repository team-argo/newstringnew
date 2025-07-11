# Gherkin Test Script generated from Jira Story: "Compassionate, Patient-Centered Care"

@ui @homepage
Feature: Compassionate, Patient-Centered Care Website Experience
  As a potential patient or visitor
  I want to explore the website's homepage and key navigation elements
  So that I can understand the organization's values, services, and how to get in touch.

  Background:
    Given the user is on the homepage

  @navigation @header
  Scenario: Verify header elements are visible on the page
    When the user looks at the header section
    Then the user should see the website logo
    And the user should see a navigation link for "Home"
    And the user should see a navigation link for "About"
    And the user should see a navigation link for "Services"
    And the user should see a navigation link for "Contact"

  @navigation
  Scenario: Navigate to the About page from the header
    When the user clicks on the "About" link in the navigation bar
    Then the user should be redirected to the "About Us" page

  @content @hero
  Scenario: Verify the hero section content on the homepage
    When the page finishes loading
    Then the user should see a prominent hero section
    And the hero section should have the title "Compassionate, Patient-Centered Care"
    And the hero section should have a background image of a scientist in a lab

  @content @engagement
  Scenario: Verify the engagement section content
    When the user scrolls to the engagement section
    Then the user should see an image of a doctor with a patient
    And the user should see a list of principles including "Patient-First Philosophy"
    And the user should see a list of principles including "Quick, Easy Access to Care"

  @navigation @engagement
  Scenario: Navigate to the Contact page from the engagement section
    When the user scrolls to the engagement section
    And the user clicks the "Let's connect" button
    Then the user should be redirected to the Contact Us page

  @content @services
  Scenario: Verify the core services overview section
    When the user scrolls to the core services section
    Then the user should see a column for "Innovation & Technology" with a relevant image and description
    And the user should see a column for "Experienced Medical Team" with a relevant image and description
    And the user should see a column for "Multiple Locations" with a relevant image and description

  @content @quote
  Scenario: Verify the inspirational quote section
    When the user scrolls to the quote section
    Then the user should see a large graphic of hands holding a heart
    And the user should see the quote "\"Other people's successes are good news...\"" with its attribution

  @content @highlights
  Scenario: Verify the key highlights section
    When the user scrolls to the "Key Highlights" section
    Then the user should see a card for "Compassion is at the Core"
    And the user should see a card for "Patients are Partners"
    And the user should see a card for "Innovation is Encouraged"
    And the user should see a card for "Teamwork Drives Us"

  @content @value-proposition
  Scenario: Verify the detailed value proposition section
    When the user scrolls to the "Your health. Your voice. Your life." section
    Then the user should see a detailed text description on the left
    And the user should see a corresponding graphic with medical icons on the right

  @navigation @footer
  Scenario: Verify footer elements are visible on the page
    When the user scrolls to the bottom of the page to view the footer
    Then the footer should contain a "Main Office" column with contact details
    And the footer should contain a "Follow Us" column with social media information
    And the footer should contain a column with legal links like "Privacy" and "Terms of Use"