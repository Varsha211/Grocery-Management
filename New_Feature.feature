Feature: Place a New Order

  Scenario: Successfully place a new order
    Given the API is running
    When I place an order with userId 1, productId 101, quantity 3, and totalPrice 29.97
    Then the order should be successfully created with status code 201
