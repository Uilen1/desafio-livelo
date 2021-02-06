package br.com.desafiolivelo.test;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import br.com.desafiolivelo.utilities.RestAssuredSetup;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;


@RunWith(Cucumber.class)
@CucumberOptions(
		tags = {"@Validado"}, 
		features = "src/test/java/br/com/desafiolivelo/features/", 
		glue = "br.com.desafiolivelo.steps", 
		snippets = SnippetType.CAMELCASE,
		plugin = {
				"pretty", 
				"html:target/cucumber-reports",
				"json:target/report.json"
				}
			)

public class BaseTest {
	
	@BeforeClass
	public static void setup() {
		RestAssuredSetup assuredSetup = new RestAssuredSetup();
	}
	

}
