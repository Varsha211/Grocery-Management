/*
Name: Varsha Gajjala
Date: 05-09-2024
Description: Online Grocery Store Management System
*/

package runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/resources/Features", 
glue="steps",
plugin = {"pretty","html:target/cucumber-report"}
)
public class Runner {

}
