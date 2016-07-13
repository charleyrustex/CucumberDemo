Feature: TC-114
  To check correct Final billed price is Total Price + 10% Total price in Book a Hotel page
  1. Launch hotel reservation application using URL as in test data.
  2. Login to the application using username and password as in test data.
  3. Select location as in test data. Select Hotel as in test data.
  4. Select room type as in test data.
  5. Select no-of-rooms as in test data.
  6. Enter check-out-date as in test data.
  7. Select No-of-adults as in test data.
  8. Select No-of-children as in test data.
  9. Click on Search button.
  10. Select the hotel and click on continue button
  11. Verify that Final Billed Price is being calculated as (price-per-night*no-of-rooms*no-of-days
  12. Verify that an order number is generated.

  Background: user logs in and navigates tru the first screen
    Given I am on the adactin site
    And I log in with my credentials
    And I am logged in
    When I set the location to "Sydney"
    And I select Hotel "Hotel Creek"
    And I select Room type "Standard"
    And I select the number of rooms "2"
    And I select the amount of adults "1"
    And I select the amount of children "0"
    And the day that I check in is "0" days from now
    And the day that I check out is "1" days from now
    Then The right hotel should be shown

  Scenario: Data should be same as selected in previous screen
    Given I am on the Select Hotel page
    When I select the first hotel
    Then The "Book A Hotel" page should be shown
    And the total price should be "AUD $ 275"
    And I fill in first name "bob"
    And I fill in last name "visser"
    And I fill in address "eemsgolaan 5"
    And I fill in creditcard number "1122334455667788"
    And I select creditcard type "VISA"
    And I select creditcard month "June"
    And I select creditcard year "2020"
    And I fill in CVV "123"
    And I click Book Now
