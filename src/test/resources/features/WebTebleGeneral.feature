Feature: Some of the general functionality verifications

  Scenario: Dropdown options verification
    Given user is already logged in to The Web table app
    When user is on the Order page
    Then user sees below options under product dropdown
      | MoneyCog   |
      | Familybea  |
      | Screenable |



  #TC #: Order place scenario
  #1- Given user is already logged in to The Web table app
  #2- When user is on the “Order” page
  #3- Then user sees below radio buttons enabled for
  #a. Visa
  #b. Mastercard
  #c. American Express
  #Note: Follow POM and BDD

    Scenario: Payment options verification
      Given user is already logged in to The Web table app
      When user is on the Order page
      Then user sees VISA as enabled payment option
      Then user sees MasterCard as enabled payment option
      Then user sees American Express as enabled payment option




      #TC #: Order place scenario
      #1- Given user is already logged in to web table app
      #2- When user is on the “Order” page
      #3- Then user enters appropriate test data
      #a. Product
      #b. Quantity
      #c. Customer name
      #d. Street
      #e. City
      #f. State
      #g. Zip
      #h. Payment info:
      #i. Card type: Visa/MasterCard/American Express
      #ii. Card No
      #iii. Expire date
      #
      #4- And user clicks to “Process Order”
      #5- Then user should see new order in the table on “View all orders”
      #page
      #TASK 9 : CREATE PARAMETERIZED VERSION OF THE SCENARIO

      #
      #Note: Follow POM and BDD



  Scenario: Order placement scenario
    Given user is already logged in to The Web table app
    When user is on the Order page
    And user enters quantity "2"
    Then user clicks to the calculate button
    And user enters customer name "Jane Doe"
    And user enters street "7th Street"
    And user enters city "New York"
    And user enters state "New York"
    And user enters zip "99999"
    And user selects payment option "Visa"
    And user enters credit card number "1111222233334444"
    And user enters expiration date "12/25"
    And user clicks to process order button
    Then user should see "Jane Doe" in the first row of the web table



    #Sve isto ali da se radi po Scenario outline version:
    #TASK 10 : CREATE SCENARIO OUTLINE VERSION
  @wip
  Scenario Outline: Order placement scenario
    Given user is already logged in to The Web table app
    When user is on the Order page
    And user enters quantity "<quantity>"
    Then user clicks to the calculate button
    And user enters customer name "<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<state>"
    And user enters zip "<zip>"
    And user selects payment option "<paymentType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiration date "<expDate>"
    And user clicks to process order button
    Then user should see "<expectedName>" in the first row of the web table

    Examples:

      | quantity | customerName | street | city | state | zip   | paymentType | cardNumber       | expDate | expectedName |
      | 3        | John Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | John Doe     |
      | 3        | Jane Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Jane Doe     |
      | 3        | Jack Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Jack Doe     |
      #| 3        | Jen Doe      | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Jen Doe      |
      #| 3        | Mike Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Mike Doe     |
      #| 3        | Mary Doe     | 7th st | NY   | NY    | 99999 | Visa        | 1111222233334444 | 12/25   | Mary Doe     |



