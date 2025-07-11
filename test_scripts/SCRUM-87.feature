# File: patient_care_website.feature
# Jira Story: [STORY-ID] - Compassionate, Patient-Centered Care

@regression @website
Feature: Homepage Content and Core Website Elements

  As a potential patient or visitor,
  I want to explore the website's homepage and core navigation,
  So that I can understand the organization's values, services, and how to get in touch.

  # Background for scenarios that start on the homepage to reduce repetition.
  Background:
    Given the user is on the homepage

  @smoke @navigation @header
  Scenario: Verify header elements are visible on any page
    Given the user is on any page of the website
    When the user looks at the header section
    Then the user should see the website logo
    And the user should see a navigation link for "Home"
    And the user should see a navigation link for "About"
    And the user should see a navigation link for "Services"
    And the user should see a navigation link for "Contact"

  @navigation
  Scenario: User navigates from the homepage to the About page
    When the user clicks on the "About" link in the navigation bar
    Then the user should be redirected to the "About Us" page

  @smoke @homepage @hero
  Scenario: Verify the hero section is displayed correctly on the homepage
    When the page loads
    Then the visitor should see a prominent hero section
    And the hero section title should be "Compassionate, Patient-Centered Care"
    And the hero section should have a background image of a scientist in a lab

  @homepage @content
  Scenario: Verify the content of the engagement section
    When the user scrolls to the engagement section
    Then the user should see an image of a doctor with a patient
    And the user should see a list of principles containing "Patient-First Philosophy"
    And the user should see a list of principles containing "Quick, Easy Access to Care"

  @homepage @navigation
  Scenario: User navigates to the Contact page from the engagement section
    When the user scrolls to the engagement section
    And the user clicks the "Let's connect" button
    Then the user should be redirected to the Contact Us page

  @homepage @content @services
  Scenario: Verify the core services overview section
    When the user scrolls to the core services section
    Then the user should see a three-column section with the following services:
      | Service                 |
      | Innovation & Technology |
      | Experienced Medical Team|
      | Multiple Locations      |
    And each service highlight should have a relevant image and description

  @homepage @content @visual
  Scenario: Verify the inspirational quote section
    When the user scrolls to the quote section
    Then the user should see a large graphic of hands holding a heart
    And the user should see the quote '"Other people\'s successes are good news..."' with its attribution

  @homepage @content @values
  Scenario: Verify the key highlights section
    When the user scrolls to the "Key Highlights" section
    Then the user should see a four-column layout with the following cards:
      | Highlight Title            |
      | Compassion is at the Core  |
      | Patients are Partners      |
      | Innovation is Encouraged   |
      | Teamwork Drives Us         |

  @homepage @content @mission
  Scenario: Verify the detailed value proposition section
    When the user scrolls to the "Your health. Your voice. Your life." section
    Then the user should see a detailed text description on the left
    And the user should see a corresponding graphic with medical icons on the right

  @smoke @footer
  Scenario: Verify footer elements are visible on any page
    Given the user is at the bottom of any page
    When the user views the footer
    Then the footer should contain a "Main Office" column with contact details
    And the footer should contain a "Follow Us" column with social media information
    And the footer should contain a column with legal links like "Privacy" and "Terms of Use"