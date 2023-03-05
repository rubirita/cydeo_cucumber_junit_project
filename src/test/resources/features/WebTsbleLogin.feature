#TC #: Login scenario
#1- Open a chrome browser
#2- Go to: https://web-table-2.cydeo.com/login
#3- Enter username: Test
#4- Enter password: Tester
#5- Verify URL:
#
#Expected: URL should end with “orders”
#
#Try different ways of implementing this step:
#1- Hard coded implementation
#2- Parameterized implementation (Cucumber expressions)
#3- Data Tables implementation
#Note: Follow POM and BDD.
#OPTIONAL TO USE SCENARIOS AVAILABLE IN THE NEXT PAGE.
#TRY TO CREATE YOURSELF FOR THE PRACTICE.



Feature: Web table app login functionality
  Agile story: User should be able to login with correct credentials

  Scenario: Positive login scenario
    Given user is on the Web Table app login page
    When user enters correct username
    And user enters correct password
    And user clicks to login button
    Then user should see orders word in the URL

  Scenario: Positive login scenario
    Given user is on the Web Table app login page
    When user enters "Test" username and "Tester" password
    And user clicks to login button
    Then user should see orders word in the URL

  Scenario: Positive login scenario
    Given user is on the Web Table app login page
    When user enters below correct credentials
      | username | Test   |
      | password | Tester |
    And user clicks to login button
    Then user should see orders word in the URL
