import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.junit.Assert;

import static io.restassured.RestAssured.given;

public class NewOrderSteps{

    private Response response;

    @When("I place an order with userId {int}, productId {int}, quantity {int}, and totalPrice {double}")
    public void i_place_an_order_with_userId_productId_quantity_and_totalPrice(Integer userId,
        Integer productId, Integer quantity, Double totalPrice) {
        String body = "{ \"userId\": " + userId + ", \"productId\": " + productId + ", \"quantity\": " +
            quantity + ", \"totalPrice\": " + totalPrice + " }";

        response =
        given()
        .header("Content-Type", "application/json")
        .body(body)
        .when()
        .post("/orders");
    }

    @Then("the order should be successfully created with status code {int}")
    public void the_order_should_be_successfully_created_with_status_code(Integer expectedStatusCode) {
        Assert.assertEquals(expectedStatusCode.intValue(), response.getStatusCode());
    }
}