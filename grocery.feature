Feature: Grocery Store Management API Testing

    Background: 
      Given I set the base uri

    Scenario: User Registration
      When I register a new user with username "VarshaG" and email "Varug@gmail.com"
      Then the user should be successfully registered with status code 201

    Scenario: User Login
      When I log in with username "john_doe" and password "password123"
      Then the login should be successful with status code 200
      
    Scenario: Add a new product
      When I add a product with name "Papaya", category "Fruits", price 110.0, and stock quantity 150
      Then the product should be successfully added with status code 201
      
    Scenario: Retrieve product details
      When I send the get the request for product details
      Then the response status code for this get request should be 200

    Scenario: Search for a product    
      When I search for products with name "Milk"
      Then I should get the product details with status code 200

    Scenario: Place an order
      When I place an order with userId 1, productId 1, quantity 5, and totalPrice 500.0
      Then the order should be successfully created with status code 201
      
    Scenario: Retrieve order details
      When I send the get the request for the order details
      Then the response status code for this request should be 200
      
    Scenario: Update a user profile
       When I post the request for updating a profile with username "Varun" and email "Varunrun@gmail.com"
       Then the response status code should be 200

    Scenario: Delete a user by user ID
      When I delete the user with ID 6
      Then the user should be successfully deleted with status code 204
      
    Scenario: Filter products by category
      When I filter the products by category "Fruits"
      Then I should receive a list of products in the "Fruits" category with status code 200