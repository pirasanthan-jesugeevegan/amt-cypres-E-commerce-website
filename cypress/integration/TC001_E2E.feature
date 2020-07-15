Feature: Automate End to End Buy Order functionality.

    I want to log into my account
    I want to select product
    I want to add to cart
    I want to make payment
    I want to complete payment

    @e2e
    Scenario: Login
        Given the user open login page
        When the user type in
            | username            | password |
            | test111@test111.com | test111  |
        And the user clicks on Sign in button
        Then "John Smith" should be shown
    @e2e
    Scenario Outline: User selects a product
        Given the user selects a "<product>" tshirt
        When the user selects quantity "<quantity>"
        And the user selects size "<size>"
        And the user selects color "<color>"
        And the user add to cart
        Then the user should see selected item "<product>"
        Examples:
            | product                     | quantity | size | color |
            | Faded Short Sleeve T-shirts | 2        | M    | blue  |